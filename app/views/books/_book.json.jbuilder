json.extract! book, :id, :ref_key, :author, :title, :publisher, :volume, :number, :series, :address, :edition, :year, :month, :note, :created_at, :updated_at
json.url book_url(book, format: :json)
