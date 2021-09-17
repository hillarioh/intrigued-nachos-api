# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
    User.create(
       username: Faker::Internet.unique.username,
       fullname:  Faker::FunnyName.unique.two_word_name,
       email: Faker::Internet.unique.email,
       password: Faker::Internet.password,
       tel_no: Faker::PhoneNumber.unique.cell_phone,
    )
end

5.times do
    Category.create(
        title: Faker::Cannabis.unique.category,
    )
end

7.times do
    Order.create(
        user_id:  Faker::Number.within(range: 1..10),
    )
end

20.times do
    OrderItem.create(
        quantity: Faker::Number.within(range: 1..5),
        product_id: Faker::Number.within(range: 1..30),
        order_id: Faker::Number.within(range: 1..7),
        price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
        discount: Faker::Number.within(range: 100..300),
        total: Faker::Number.decimal(l_digits: 4, r_digits: 2),
    )
end

30.times do
    Product.create(
        title: Faker::Book.title,
        description: Faker::Lorem.sentence(word_count: 30), 
        image_url: Faker::Internet.url,
        price: Faker::Number.number(digits: 4),
        category_id: Faker::Number.within(range: 1..5),
    )
end

10.times do
    Favorite.create(
        user_id:Faker::Number.within(range: 1..10),
        product_id: Faker::Number.within(range: 1..30),
    )
end