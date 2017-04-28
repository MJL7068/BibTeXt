class Article < ApplicationRecord
  include Reference
  before_validation :generate_ref_key_if_empty
  belongs_to :page

  validates :ref_key, :author, :title, :year, :journal, presence: true

  def self.rendered_fields
    [:ref_key, :author, :journal, :title, :volume, :number, :pages, :year, :month, :note]
  end

  def to_bibtex
    return serialize_to_bibtex(self, Article.rendered_fields)
  end

  private

  def generate_ref_key_if_empty
    if self.ref_key.blank?
      self.ref_key = generate_ref_key(self, self.page_id)
    end
  end
end
