class RemoveContentFromMaxims < ActiveRecord::Migration[5.2]
  def change
    remove_column :maxims, :content, :string
  end
end
