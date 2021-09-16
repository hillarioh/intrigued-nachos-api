# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
    User.create(
       username: Faker::Name.unique.first_name,
       fullname:  Faker::FunnyName.unique.two_word_name,
       email: "okerioh@gmail.com",
       password: Faker::Nation.capital_city,
        tel_no: Faker::PhoneNumber.unique.cell_phone
    )
end

5.times do
    Category.create(
        title: Faker::Cannabis.category,
    )
end

7.times do
    Order.create(
        user_id:  Random.rand(1..10),
    )
end

20.times do
    OrderItem.create(
        quantity: Random.rand(1..5),
        product_id: Random.rand(1..30),
        order_id: Random.rand(1..7),
        price: 1000,
        discount: 200,
        total: 2000,
    )
end

30.times do
    Product.create(
        title: Faker::
    )
end