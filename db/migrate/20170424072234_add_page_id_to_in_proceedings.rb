class AddPageIdToInProceedings < ActiveRecord::Migration[5.0]
  def change
    add_column :in_proceedings, :page_id, :integer
  end
end
