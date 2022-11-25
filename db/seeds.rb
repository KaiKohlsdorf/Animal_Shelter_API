class Seed

  def self.begin
    seed = Seed.new
    seed.generate_cats
    seed.generate_dogs
  end

  def generate_cats
    20.times do |i|
      cat = Cat.create!(
        c_name: Faker::Creature::Cat.name,
        c_breed: Faker::Creature::Cat.breed,
      )
      puts "Cat #{i}: Name is #{cat.c_name} and breed is '#{cat.c_breed}'."
    end
  end

  def generate_dogs
    20.times do |i|
      dog = Dog.create!(
        d_name: Faker::Creature::Dog.name,
        d_breed: Faker::Creature::Dog.breed,
      )
      puts "Dog #{i}: Name is #{dog.d_name} and breed is '#{dog.d_breed}'."
    end
  end
end

Seed.begin

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
