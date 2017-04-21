class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :ref_key
      t.string :author
      t.string :title
      t.string :publisher
      t.string :volume
      t.string :number
      t.string :series
      t.string :address
      t.string :edition
      t.string :year
      t.string :month
      t.string :note

      t.timestamps
    end
  end
end
