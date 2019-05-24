class Utilisateur
    attr_accessor :prenom, :nom

    def initialize(prenom, nom)
        @prenom = prenom
        @nom = nom
    end

end

alice = Utilisateur.new("Alice", "Doe")

puts alice.prenom
puts alice.nom
puts alice.prenom+" "+alice.nom
puts "#{alice.prenom} #{alice.nom}"
