class InProceeding < ApplicationRecord
  belongs_to :page

  validates :ref_key, presence: true
  validates :author, presence: true
  validates :title, presence: true
  validates :booktitle, presence: true
  validates :year, presence: true

  def self.rendered_fields
    [:ref_key, :author, :title, :booktitle, :editor, :volume, :number, :series, :pages, :address, :organization, :publisher, :year, :month, :note]
  end

  def to_bibtex
    str =  "@book{#{ref_key},\n";
    str += "     author    = \"#{author}\",\n"
    str += "     title     = \"#{title}\",\n"
    str += "     booktitle = \"#{booktitle}\",\n" 
    str += "     year      = \"#{year}\",\n" 
    str += "     editor    = \"#{editor}\",\n" unless editor.blank?
    str += "     volume    = \"#{volume}\",\n" unless volume.blank?
    str += "     number    = \"#{number}\",\n" unless number.blank?
    str += "     series    = \"#{series}\",\n"  unless series.blank?
    str += "     pages     = \"#{pages}\",\n" unless pages.blank?
    str += "     address   = \"#{address}\",\n" unless address.blank?
    str += "     organization = \"#{organization}\",\n" unless organization.blank?
    str += "     publisher = \"#{publisher}\",\n" unless publisher.blank?
    str += "     month     = \"#{month}\",\n"  unless month.blank?
    str += "     note      = \"#{note}\",\n"  unless note.blank?

    str += "}"
    return str
  end
end
