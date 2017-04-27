class ApplicationRecord < ActiveRecord::Base
  before_validation :generate_ref_key_if_empty
  self.abstract_class = true


  private

  def generate_ref_key_if_empty
    if ref_key.blank?
       self.ref_key = (author + title + year).delete(" \t\r\n").downcase
    end
  end
end
