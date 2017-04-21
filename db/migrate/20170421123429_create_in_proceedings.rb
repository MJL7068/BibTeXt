class CreateInProceedings < ActiveRecord::Migration[5.0]
  def change
    create_table :in_proceedings do |t|
      t.string :ref_key
      t.string :author
      t.string :title
      t.string :booktitle
      t.string :editor
      t.string :volume
      t.string :number
      t.string :series
      t.string :pages
      t.string :address
      t.string :organization
      t.string :publisher
      t.string :year
      t.string :month
      t.string :note

      t.timestamps
    end
  end
end
