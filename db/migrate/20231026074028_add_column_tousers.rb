class AddColumnTousers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :post_code, :string
    add_column :users, :biography, :text
  end
end
