class AddTextToMaxims < ActiveRecord::Migration[5.2]
  def change
    add_column :maxims, :text, :string
  end
end
