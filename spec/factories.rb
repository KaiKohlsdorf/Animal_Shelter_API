FactoryBot.define do
  factory(:cat) do
    c_name {Faker::Creature::Cat.name}
    c_breed {Faker::Creature::Cat.breed}
    date {"today"}
  end

  factory(:dog) do
    d_name {Faker::Creature::Dog.name}
    d_breed {Faker::Creature::Dog.breed}
    date {"today"}
end