class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :phone
      t.text :message

      t.timestamps null: false
    end
  end
end
