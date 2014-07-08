class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.string :rating
      t.string :comments

      t.timestamps
    end
  end
end
