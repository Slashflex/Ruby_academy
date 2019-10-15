class Utilisateur
    attr_accessor :prenom, :nom, :pays

    def nom_complet
        prenom + " " + nom
    end
    def habite_en(valeur)
        valeur == pays
    end
end

bob = Utilisateur.new
bob.prenom = "Bob"
bob.nom = "Lennon"
bob.pays = "France"

puts bob.nom_complet
puts bob.habite_en("France")

verif_pays = bob.pays == "Suisse" ? "Oui tu es suisse" : "Non, tu n'es pas suisse"
puts verif_pays
