class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.string :room_no
      t.string :floor
      t.string :incharge_name

      t.timestamps
    end
  end
end
