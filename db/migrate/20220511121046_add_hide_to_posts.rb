class AddHideToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :hide, :boolean, null: false, default: true
  end
end
