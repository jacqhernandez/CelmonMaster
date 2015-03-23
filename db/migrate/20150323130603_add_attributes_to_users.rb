class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :handle, :string
    add_column :users, :mobile, :integer
  end
end
