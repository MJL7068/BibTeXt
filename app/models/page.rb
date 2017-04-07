class Page < ApplicationRecord
    has_many :articles

	def get_articles
		Article.where(page_id: id)
	end

end
