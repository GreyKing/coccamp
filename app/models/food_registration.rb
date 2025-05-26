class FoodRegistration < ApplicationRecord
  validates :name, :email, :phone, :solo, presence: true

  enum :meal_types, {
    breakfast: 0,
    lunch: 1,
    dinner: 2,
    brunch: 3,
    dessert: 4,
    other: 5,
  }, prefix: true

  enum :planned_meals, {
    zero: 0,
    one: 1,
    two: 2,
    three: 3,
    four: 4,
    more: 5
  }, prefix: true

  enum :cooked_meals, {
    zero: 0,
    one: 1,
    two: 2,
    three: 3,
    four: 4,
    more: 5
  }, prefix: true

  enum :clean_up_meals, {
    zero: 0,
    one: 1,
    two: 2,
    three: 3,
    four: 4,
    more: 5
  }, prefix: true

  enum :eat_out_meals, {
    zero: 0,
    one: 1,
    two: 2,
    three: 3,
    four: 4,
    more: 5
  }, prefix: true
end