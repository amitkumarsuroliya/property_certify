class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :slug
      t.string :email
      t.string :phone
      t.string :website
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :status

      t.timestamps
    end
  end
end
