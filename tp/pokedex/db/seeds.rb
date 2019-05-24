# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    Pokemon.create([
        { name: 'Roucoups', content: 'Rouu Rouu', type: Type.find(1), user: User.find(1) },
        { name: 'Raichu', content: 'Pika Pika', type: Type.find(1), user: User.find(1) }
    ])


