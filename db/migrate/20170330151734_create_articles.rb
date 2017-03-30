class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :ref_key
      t.string :author
      t.string :journal
      t.string :title
      t.string :volume
      t.string :number
      t.string :pages
      t.string :year
      t.string :month
      t.string :note
      t.integer :page_id

      t.timestamps
    end
  end
end
