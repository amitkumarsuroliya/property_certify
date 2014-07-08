class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstName, :string
    add_column :users, :lastName, :string
    add_column :users, :image, :string
    add_column :users, :dob, :string
    add_column :users, :gender, :string
    add_column :users, :zip, :string
    add_column :users, :phoneNumber, :string
    add_column :users, :deviceUuid, :string
    add_column :users, :isActive, :boolean
  end
end
