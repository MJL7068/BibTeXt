class Book < ApplicationRecord
  belongs_to :page

  validates :ref_key, presence: true
  validates :author, presence: true
  validates :title, presence: true
  validates :publisher, presence: true
  validates :year, presence: true

  def self.rendered_fields
    [:ref_key, :author, :title, :publisher, :volume, :number, :series, :address, :edition, :year, :month, :note]
  end

  def to_bibtex
    str =  "@book{#{ref_key},\n";
    str += "     author    = \"#{author}\",\n"
    str += "     title     = \"#{title}\",\n"
    str += "     publisher = \"#{publisher}\",\n"
    str += "     year      = \"#{year}\",\n" 
    str += "     volume    = \"#{volume}\",\n" unless volume.blank?
    str += "     number    = \"#{number}\",\n" unless number.blank?
    str += "     series    = \"#{series}\",\n"  unless series.blank?
    str += "     address   = \"#{address}\",\n" unless address.blank?
    str += "     edition   = \"#{edition}\",\n" unless edition.blank?
    str += "     month     = \"#{month}\",\n"  unless month.blank?
    str += "     note      = \"#{note}\",\n"  unless note.blank?

    str += "}"
    return str
  end
end
