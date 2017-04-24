class AddPageIdToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :page_id, :integer
  end
end
