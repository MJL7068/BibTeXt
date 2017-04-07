class Page < ApplicationRecord
    has_many :articles

	def get_references
		Article.where(page_id: id)
	end
end
