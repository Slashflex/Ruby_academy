# utilisateurs =[
#     "Alice", "Bob", "John", "Hector", "Théo"
# ]
# i = 0
# utilisateurs.each do |utilisateur|
#     puts i
#     i += 1
#     puts utilisateur
# end



# 10.times do |i| 
#     puts "Hello #{i}"
#     i.times do
#         puts "World"
#     end
# end


# jours_ouvres = [
#   "lundi","mardi","mercredi","jeudi","vendredi"
# ]

# jours_ouvres.each_with_index do |jour, index|
# jour_restant = 6 - index

#   if jour == "vendredi" 
#     puts jour + " : Bon weekend !"
#   elsif jour == "lundi"
#     puts jour + " : Bon courage !"
#   else
#     puts jour + " : Weekend dans #{jour_restant} jours !"
#   end
# end

# utilisateurs =[
#   "Alice", "Bob", "John", "Hector", "Théo"
# ]

# utilisateurs.each_with_index do |utilisateur, index|
#   puts index
#   puts utilisateur
# end

a = 10
puts "a est égal à: #{a}"

type = a > 10 ? 'supérieur' : 'inférieur ou égal'
puts "a est #{type} à 10"