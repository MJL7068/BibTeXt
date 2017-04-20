class Page < ApplicationRecord
    has_many :articles

	def get_articles
		Article.where(page_id: id)
	end

    def to_bibtex
        output = ""
        
        # TODO: when we implement other reference types, create more loops here
        # (or combine them to single array, since all of them should have .to_bibtext method)
        get_articles.each do |a|
            output += a.to_bibtex
            output += "\n\n"
        end
        
        return output
    end
end
