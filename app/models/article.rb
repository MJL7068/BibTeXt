class Article < ApplicationRecord
  # before_validation would be other thing. before_create is called after validations
    before_create :generate_ref_key_if_empty
    belongs_to :page

  # validates :ref_key, presence: true # should work if using before_validation, although i'm not
  # sure if changing the ref_key in before_validation callback affects the actual validation? like, it
  # might use cached version or smth
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

    # todo, this must be put into book and in_proceeding as well, OR create a common
    # base class for all references?
    # DOESNT WORK ATM
    def generate_ref_key_if_empty
      if ref_key.blank?
         ref_key = (author + title + year).delete(" \t\r\n").downcase
      end
    end
end
