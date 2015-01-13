class CreateAliases < ActiveRecord::Migration
  def change
    create_table :aliases do |t|
      t.string :source
      t.string :destination
      t.belongs_to :domain

      t.timestamps null: false
    end
    add_index :aliases, [:source, :destination], unique: true
  end
end
