# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
long_island = Cocktail.create(name: "Long Island Ice Tea")
mojito = Cocktail.create(name: "Mojito")
white_russian  = Cocktail.create(name: "White Russian")

lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint_leaves = Ingredient.create(name: "mint leaves")

Dose.create(description: "2 slice", cocktail_id: mojito.id, ingredient_id: lemon.id)
Dose.create(description: "2 cubes", cocktail_id: mojito.id, ingredient_id: ice.id)
Dose.create(description: "2 slice", cocktail_id: mojito.id, ingredient_id: mint_leaves.id) 