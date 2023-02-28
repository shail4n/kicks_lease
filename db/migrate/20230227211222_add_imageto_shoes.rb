class AddImagetoShoes < ActiveRecord::Migration[7.0]
  def change
    add_column :shoe, :img_url, :string
  end
end
