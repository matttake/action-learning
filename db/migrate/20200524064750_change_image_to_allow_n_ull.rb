class ChangeImageToAllowNUll < ActiveRecord::Migration[5.2]
  def change
    change_column_null :posts, :image, true
  end
end
