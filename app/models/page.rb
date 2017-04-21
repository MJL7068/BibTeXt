class Page < ApplicationRecord
  has_many :articles
  has_many :books
  has_many :inproceedings

  def get_articles
    Article.where(page_id: id)
  end

  def get_books
    Book.where(page_id: id)
  end

  def get_inproceedings
    InProceedings.where(page_id: id)
  end

  def to_bibtex
    output = ""

    # TODO: when we implement other reference types, create more loops here
    # (or combine them to single array, since all of them should have .to_bibtext method)
    get_articles.each do |a|
      output += a.to_bibtex
      output += "\n\n"
    end

    get_books.each do |b|
      output += b.to_bibtex
      output += "\n\n"
    end

    get_inproceedings.each do |i|
      output += i.to_bibtex
      output += "\n\n"
    end

    return output
  end
end
