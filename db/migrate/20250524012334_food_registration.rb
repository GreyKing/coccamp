class FoodRegistration < ActiveRecord::Migration[8.0]
  def change
    create_table :food_registrations do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.boolean :solo, default: false
      # enum with types for each of the following:
      t.integer :planned_meals, :cooked_meals, :clean_up_meals, :eat_out_meals, :meal_types

      t.text :allergies_and_restrictions
      t.string :special_requests

    end
  end
end
