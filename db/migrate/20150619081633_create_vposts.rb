class CreateVposts < ActiveRecord::Migration
  def change
    create_table :vposts do |t|
      t.string :identifier
      t.text :payload

      t.timestamps
    end
  end
end
