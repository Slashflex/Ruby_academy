# frozen_string_literal: true

# villes = ['Paris', 'New York', 'Londres', 'Bali', 'Zanzibar']

# puts "Défi n°1 : Si j'étais en vacances, j'irais à..."
# villes.each do |ville|
#   puts ville
# end

# voyages = [
#   { ville: 'Paris', duree: 10 },
#   { ville: 'New York', duree: 5 },
#   { ville: 'Berlin', duree: 2 },
#   { ville: 'Montréal', duree: 15 }
# ]

# puts 'Défi n°2 : Détail de mes vacances de rêve'

# voyages.each do |voyage|
#   puts "Voyage à #{voyage[:ville]} pour #{voyage[:duree]} jours"
# end

voyages = [
  { ville: 'Paris', duree: 10 },
  { ville: 'New York', duree: 5 },
  { ville: 'Berlin', duree: 2 },
  { ville: 'Montréal', duree: 15 }
]

puts 'Défi n°2 : Détail de mes vacances de rêve'

voyages.each do |voyage|
  if voyage[:duree] <= 5
    puts "Voyage à #{voyage[:ville]} pour #{voyage[:duree]} jours"
  else
    puts "Vous n'avez pas assez de vacances"
  end
end
