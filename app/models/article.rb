class Article < ApplicationRecord
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
end
