class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :email
      t.string :password
      t.int :id
      t.int :domain_id

      t.timestamps null: false
    end
    add_index :accounts, :email, unique: true
    add_index :accounts, :id, unique: true
  end
end
