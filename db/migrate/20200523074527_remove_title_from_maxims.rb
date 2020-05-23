class RemoveTitleFromMaxims < ActiveRecord::Migration[5.2]
  def change
    remove_column :maxims, :title, :string
  end
end
