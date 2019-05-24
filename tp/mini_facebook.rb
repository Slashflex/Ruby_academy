class Utilisateur
    attr_accessor :prenom, :nom, :amis 

    def nombre_amis
        amis.size
    end

    def est_amis_avec(prenom)
        puts "Ami avec #{prenom} ?"
        amis.each do |ami|
            return true if ami.prenom == prenom
        end
        return false
    end

    def est_amis_avec_nom(nom)
        puts "Ami avec #{nom} ?"
        amis.each do |ami|
            return true if ami.nom == nom
        end
        return false
    end

end

alice = Utilisateur.new
alice.prenom = "Alice"
alice.nom = "Ray"

bob = Utilisateur.new
bob.prenom = "Bob"
bob.nom = "Lennon"

jane = Utilisateur.new
jane.prenom = "Jane"
jane.nom = "Doe"

alice.amis = [bob, jane]
bob.amis = [alice]
jane.amis = [alice]

puts "#{alice.prenom} à #{alice.nombre_amis} amis"
puts alice.est_amis_avec("Jane")




