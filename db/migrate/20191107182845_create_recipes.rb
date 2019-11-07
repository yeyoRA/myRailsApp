class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :author
      t.text :descr

      t.timestamps
    end
  end
end
