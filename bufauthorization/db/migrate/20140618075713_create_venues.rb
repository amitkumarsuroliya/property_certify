class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :slug
      t.string :address
      t.string :city
      t.string :state
      t.string :zipCode
      t.string :phone
      t.string :website
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :hours
      t.boolean :bottleService
      t.boolean :ticketSales
      t.string :closingTime
      t.boolean :parking
      t.string :gpsLocX
      t.string :gpsLocY
      t.string :status

      t.timestamps
    end
  end
end
