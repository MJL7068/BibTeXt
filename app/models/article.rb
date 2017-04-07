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
end
