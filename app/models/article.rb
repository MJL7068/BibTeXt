class Article < ApplicationRecord
  before_validation :generate_ref_key_if_empty
  belongs_to :page

  validates :ref_key, presence: true
  validates :author, presence: true
  validates :title, presence: true
  validates :year, presence: true
  validates :journal, presence: true

  def self.rendered_fields
    [:ref_key, :author, :journal, :title, :volume, :number, :pages, :year, :month, :note]
  end

  def to_bibtex
    str =  "@article{#{ref_key},\n";
    str += "     author    = \"#{author}\",\n"
    str += "     title     = \"#{title}\",\n"
    str += "     journal   = \"#{journal}\",\n"
    str += "     year      = \"#{year}\",\n"
    str += "     volume    = \"#{volume}\",\n" unless volume.blank?
    str += "     number    = \"#{number}\",\n" unless number.blank?
    str += "     pages     = \"#{pages}\",\n"  unless pages.blank?
    str += "     month     = \"#{month}\",\n"  unless month.blank?
    str += "     note      = \"#{note}\",\n"  unless note.blank?

    str += "}"
    return str
  end

  private

  def generate_ref_key_if_empty
    if self.ref_key.blank?
      ref_key = (author.to_s + title.to_s + year.to_s).delete(" \t\r\n").downcase
      articles = Article.where(page_id: page_id).collect { |a| a[:ref_key].include? ref_key }
      books = Book.where(page_id: page_id).collect { |b| b[:ref_key].include? ref_key }
      in_proceedings = InProceeding.where(page_id: page_id).collect { |i| i[:ref_key].include? ref_key }
      if !articles.empty? || !books.empty? || !in_proceedings.empty?
        ref_key += (articles.length + books.length + in_proceedings.length + 1).to_s 
      end
      self.ref_key = ref_key
    end
  end
end
