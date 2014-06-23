class AddEmailCloumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email, :string, default: true
  end
end
