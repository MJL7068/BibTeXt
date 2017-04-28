class Book < ApplicationRecord
  include Reference
  before_validation :generate_ref_key_if_empty
  belongs_to :page

  validates :ref_key, :author, :title, :publisher, :year, presence: true

  def self.rendered_fields
    [:ref_key, :author, :title, :publisher, :volume, :number, :series, :address, :edition, :year, :month, :note]
  end

  def to_bibtex
    return serialize_to_bibtex(self, Book.rendered_fields)
  end

  private

  def generate_ref_key_if_empty
    if self.ref_key.blank?
      self.ref_key = generate_ref_key(self, self.page_id)
    end
  end
end
