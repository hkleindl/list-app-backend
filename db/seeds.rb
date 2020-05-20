# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
    username = "#{Faker::Color.unique.color_name}_#{Faker::Creature::Animal.unique.name}"
    username = username.tr(" ", "_")
    User.create(username: username, password: "password")
end

User.all.each do |user|
    3.times do
        list_name = Faker::Hipster.word.capitalize
        user.lists.create(name: list_name)
    end
end

List.all.each do |list|
    6.times do
        content = Faker::Hipster.sentence
        list.items.create(content: content)
    end
end