class CreateBeacons < ActiveRecord::Migration
  def change
    create_table :beacons do |t|
      t.string :sid
      t.string :loc

      t.timestamps
    end
  end
end
