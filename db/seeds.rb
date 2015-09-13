Day.create!([
	{number: 1, name: "Sunday", meals: ["1", "1", "2"]},
	{number: 2, name: "Monday", meals: ["1", "2"]},
  {number: 3, name: "Tuesday", meals: ["1", "2"]},
  {number: 4, name: "Wednesday", meals: ["2"]},
  {number: 5, name: "Thursday", meals: nil},
  {number: 6, name: "Friday", meals: nil},
  {number: 7, name: "Saturday", meals: []}
])
Ingredient.create!([
  {meal_id: 1, name: "Milk", quantity: "2.0", quantity_units: "cups"},
  {meal_id: 1, name: "Rice Chex", quantity: "1.0", quantity_units: "package"},
  {meal_id: 2, name: "Ground Beef", quantity: "2.0", quantity_units: "Lbs"},
  {meal_id: 2, name: "Bun", quantity: "1.0", quantity_units: "Package"}
])
Meal.create!([
  {name: "Cereal", image: "http://www.rubberontheroad.org/wp-content/uploads/2010/02/milk-on-cereal-1.jpg"},
  {name: "Beef on a Bun", image: "http://www.weissmeats.com/image/cache/data/shutterstock_2791253-500x500.jpg"}
])
