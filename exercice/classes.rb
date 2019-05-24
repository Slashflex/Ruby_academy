class Utilisateur
    attr_accessor :prenom, :nom
end

bob = Utilisateur.new
bob.prenom = "Bob"
bob.nom= "Lennon"

puts bob.prenom + " " + bob.nom

jane = Utilisateur.new
jane.prenom = "Jane"
jane.nom = "Lennon"

puts jane.prenom + " " + jane.nom