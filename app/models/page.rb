class Page < ApplicationRecord
	def get_references
		Article.where(page_id: id)
	end
end
