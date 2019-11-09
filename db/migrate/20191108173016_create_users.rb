class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.text :address
      t.string :userName
      t.string :password
      t.timestamps
    end
  end
end
