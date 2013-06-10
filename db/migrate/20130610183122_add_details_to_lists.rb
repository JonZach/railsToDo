class AddDetailsToLists < ActiveRecord::Migration
  def change
    add_column :lists, :title, :string
    add_column :lists, :date, :date
  end
end
