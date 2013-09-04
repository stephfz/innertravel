class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :departing
      t.integer :returning
      t.boolean :setsavailable

      t.timestamps
    end
  end
end
