class CreateAliases < ActiveRecord::Migration
  def change
    create_table :aliases do |t|
      t.string :source
      t.string :destination
      t.int :domain_id
      t.int :id

      t.timestamps null: false
    end
    add_index :aliases, [:source, :destination], unique: true
    add_index :aliases, :id, unique: true
  end
end
