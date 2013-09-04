class CreateTripdates < ActiveRecord::Migration
  def change
    create_table :tripdates do |t|
      t.string :tdate

      t.timestamps
    end
  end
end
