class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :slug
      t.string :startDate
      t.string :endDate
      t.string :flyer
      t.string :tickets
      t.string :description
      t.string :guestList
      t.string :entertainment
      t.string :cover
      t.string :dressCode
      t.string :ageLimit
      t.string :category
      t.string :fbID
      t.string :status

      t.timestamps
    end
  end
end
