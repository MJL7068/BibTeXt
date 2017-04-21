class Page < ApplicationRecord
    before_create :randomize_id
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

    private
    def randomize_id
     begin
       self.id = rand(1000000...10000000)
     end while Page.where(id: self.id).exists?
   end
end
