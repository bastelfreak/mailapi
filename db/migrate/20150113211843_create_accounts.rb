class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :email
      t.string :password
      t.belongs_to :domain

      t.timestamps null: false
    end
    add_index :accounts, :email, unique: true
  end
end
