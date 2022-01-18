# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product_description = %Q(Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo assumenda harum recusandae, minima ea veritatis omnis impedit ipsa dolor rerum, aspernatur, distinctio voluptatibus doloribus reiciendis exercitationem adipisci iure expedita optio. Corrupti recusandae maxime aspernatur molestias similique debitis ratione veniam consequatur magnam aut, harum numquam dicta voluptatum natus eaque nemo quaerat!)

8.times do
  Product.create(
    name: Faker::Commerce.product_name, 
    description: product_description, 
    price: Faker::Commerce.price
)
end
