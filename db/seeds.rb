# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

15.times do
  User.create(
      name: Faker::GameOfThrones.character,
      email: Faker::Internet.email,
      bio: Faker::Hipster.sentence)
end

users = User.all

15.times do
  Post.create(
      title: Faker::TwinPeaks.location,
      body: Faker::TwinPeaks.quote,
      author_id: users.sample.id)
end


15.times do
    Comment.create(
        body: Faker::Hacker.say_something_smart)
end

15.times do
  Tag.create(
      name: Faker::ChuckNorris.fact)

end
