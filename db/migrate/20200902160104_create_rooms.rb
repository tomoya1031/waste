class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|

      t.references :user
      t.references :product
      t.timestamps
    end
  end
end
