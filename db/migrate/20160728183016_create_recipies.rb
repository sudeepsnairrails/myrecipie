class CreateRecipies < ActiveRecord::Migration
  def change
    create_table :recipies do |t|
      t.string :name
      t.text :description
      t.text :summary
      t.timestamps
    end
  end
end
