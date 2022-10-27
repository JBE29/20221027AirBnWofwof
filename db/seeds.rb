require 'faker'
City.destroy_all
Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all

c1 = City.create!(city_name: "Quimper")
c2 =City.create!(city_name: "Pont-l'Abbé")
c3 = City.create!(city_name: "Bénodet")
c4 = City.create!(city_name: "Concarneau")


ds1 = Dogsitter.create!(ds_name: Faker::Sports::Football.player, city: c1)
ds2 = Dogsitter.create!(ds_name: Faker::Sports::Football.player, city: c2)
ds3 = Dogsitter.create!(ds_name: Faker::Sports::Football.player, city: c3)
ds4 = Dogsitter.create!(ds_name: Faker::Sports::Football.player, city: c4)

d1 = Dog.create!(name:Faker::Creature::Dog.name,
        race:Faker::Creature::Dog.breed,
        city: c1)
d2 = Dog.create!(name:Faker::Creature::Dog.name,
        race:Faker::Creature::Dog.breed,
        city: c1)
d3 = Dog.create!(name:Faker::Creature::Dog.name,
        race:Faker::Creature::Dog.breed,
        city: c4)
d4 = Dog.create!(name:Faker::Creature::Dog.name,
        race:Faker::Creature::Dog.breed,
        city: c2)


s1 = Stroll.create!(date:Faker::Date.in_date_period ,
        dogsitter: ds2,
        dog: d4)
s2 = Stroll.create!(date:Faker::Date.in_date_period ,
    dogsitter: ds1,
    dog: d1)
s3 = Stroll.create!(date:Faker::Date.in_date_period ,
    dogsitter: ds3,
    dog: d2)
s4 = Stroll.create!(date:Faker::Date.in_date_period ,
    dogsitter: ds3,
    dog: d1)
s5 = Stroll.create!(date:Faker::Date.in_date_period ,
    dogsitter: ds1,
    dog: d3)



