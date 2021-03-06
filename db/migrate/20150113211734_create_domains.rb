class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :domainname
      t.boolean :active

      t.timestamps null: false
    end
    add_index :domains, :domainname, unique: true
  end
end
