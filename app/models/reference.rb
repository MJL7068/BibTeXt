module Reference
  def generate_ref_key_from_fields(*fields)
    return fields.inject("") { |r, s| r + parse_field(s) unless s.blank? }
  end

  def parse_field(field)
    return field.split.inject("") { |r, s| r + s.first }
  end

  def generate_ref_key(reference, page_id)
    ref_key = generate_ref_key_from_fields(reference[:author], reference[:title])
    articles = Article.where(page_id: page_id).collect { |a| a[:ref_key].match? /^#{ref_key}\d*$/ }
    books = Book.where(page_id: page_id).collect { |b| b[:ref_key].match? /^#{ref_key}\d*$/ }
    in_proceedings = InProceeding.where(page_id: page_id).collect { |i| i[:ref_key].match? /^#{ref_key}\d*$/ }

    if articles.any? || books.any? || in_proceedings.any?
      ref_key += (articles.length + books.length + in_proceedings.length + 1).to_s 
    end

    return ref_key
  end

  def serialize_to_bibtex(reference, fields)
    str = "@#{reference.class.name.downcase}{#{reference[fields.first]},\n"
    fields.drop(1).each do |field|
      str += "     " +  field.to_s.ljust(10) + "= \"#{reference[field]}\",\n" unless reference[field].blank?
    end
    str += "}"
    return str
  end
end
