class AddNameToMaxims < ActiveRecord::Migration[5.2]
  def change
    add_column :maxims, :name, :string
  end
end
