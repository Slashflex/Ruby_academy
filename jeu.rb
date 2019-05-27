#------------------------------------------------------------------------------------------------#
#                                        CLASS : PERSONNE                                        #
#------------------------------------------------------------------------------------------------#
class Personne
  attr_accessor :nom, :points_de_vie, :en_vie

  def initialize(nom)
    @nom = nom
    @points_de_vie = 100
    @en_vie = true
  end

  def info
    if @en_vie
      "#{nom}  (#{points_de_vie}/100pv)"
    else
      "#{nom}  (vaincu)"
    end

    # - Renvoie le nom et les points de vie si la personne est en vie
    # - Renvoie le nom et "vaincu" si la personne a été vaincue
  end

  def attaque(personne, bonus)
    puts "#{nom} s'élance vers le #{personne.nom} !"
    degats_infliges = degats + bonus
    personne.subit_attaque(degats_infliges)

    # - Fait subir des dégats à la personne passée en paramètre
    # - Affiche ce qu'il s'est passé
  end

  def subit_attaque(degats_recus)
    @points_de_vie -= degats_recus

    if points_de_vie <= 0
      puts "#{nom} est vaincu !"
      @en_vie = false
    else
      puts "#{nom} subit #{degats_recus} points de dégâts"
    end
    # - Réduit les points de vie en fonction des dégats reçus
    # - Affiche ce qu'il s'est passé
    # - Détermine si la personne est toujours en_vie ou non
  end
end
#------------------------------------------------------------------------------------------------#
#                                        CLASS : JOUEUR                                          #
#------------------------------------------------------------------------------------------------#
class Joueur < Personne
  attr_accessor :degats_bonus

  def initialize(nom)
    # Par défaut le joueur n'a pas de dégats bonus
    @degats_bonus = 0

    # Appelle le "initialize" de la classe mère (Personne)
    super(nom)
  end

  def degats
    35
    # - Affiche ce qu'il s'est passé
  end

  def soin
    soin = 25
    @points_de_vie += soin

    @points_de_vie = 100 if points_de_vie > 100 # ça donne quoi en TERNAIRE ?

    puts "#{nom} se soigne de #{soin}hp, il possède maintenant #{points_de_vie}hp"
  end

  def ameliorer_degats
    # A FAIRE
    @degats_bonus += 25

    # puts "#{@nom} augmente ses dégâts de #{degats_bonus} pour son prochain tour..."
  end
end
#------------------------------------------------------------------------------------------------#
#                                        CLASS : ENNEMI                                          #
#------------------------------------------------------------------------------------------------#
class Ennemi < Personne
  def degats
    if nom == 'Balrog'
      22
    elsif nom == 'Squelette'
      12
    elsif nom == 'Goblin'
      6
    end
  end
end

#------------------------------------------------------------------------------------------------#
#                                        CLASS : JEU                                             #
#------------------------------------------------------------------------------------------------#
class Jeu
  def self.actions_possibles(monde)
    puts 'ACTIONS POSSIBLES :'
    puts '----------'
    puts '0 - Se soigner'
    puts '1 - Améliorer son attaque'

    # On commence à 2 car 0 et 1 sont réservés pour les actions
    # de soin et d'amélioration d'attaque
    i = 2
    monde.ennemis.each do |ennemi|
      puts "#{i} - Attaquer #{ennemi.info}"
      i += 1
    end
    puts '99 - Quitter'
  end

  def self.est_fini(joueur, monde)
    joueur.en_vie == false || monde.ennemis[0].en_vie == false && monde.ennemis[1].en_vie == false && monde.ennemis[2].en_vie == false
  end
end
#------------------------------------------------------------------------------------------------#
#                                        CLASS : MONDE                                           #
#------------------------------------------------------------------------------------------------#
class Monde
  attr_accessor :ennemis

  def ennemis_en_vie
    ennemis
  end
end
# ________________________________________________________________________________________________#

#-----                              INITIALISATION DU MONDE                                 -----#
monde = Monde.new

#-----                                 AJOUT DES ENNEMIS                                    -----#
monde.ennemis = [
  Ennemi.new('Balrog'),
  Ennemi.new('Goblin'),
  Ennemi.new('Squelette')
]

#-----                              INITIALISATION DU JOUEUR                                -----#
joueur = Joueur.new('Jean-Michel Paladin')

#-----                                  LANCEMENT DU JEU                                    -----#
# Message d'introduction:
puts "\n\nAinsi débutent les aventures de #{joueur.nom}\n\n"
#-----                                  SAUVEGARDE DONNEES                                  -----#
nb_tour_total = 0
degats_total = 0
soin_total = 0
#-----                               BOUCLE DU JEU PRINCIPAL                                -----#
100.times do |tour|
  puts "\n------------------ Tour numéro #{tour} ------------------"
  nb_tour_total += 1
  # Affiche les différentes actions possibles
  Jeu.actions_possibles(monde)

  puts "\nQUELLE ACTION FAIRE ?"
  # On range dans la variable "choix" ce que l'utilisateur renseigne
  choix = gets.chomp.to_i

  #-----                                   ACTION DU JOUEUR                                   -----#
  if choix == 0
    joueur.soin
    soin_total += 25
  elsif choix == 1
    joueur.ameliorer_degats
  elsif choix == 99
    break
  else
    # Choix - 2 car nous avons commencé à compter à partir de 2
    # car les choix 0 et 1 étaient réservés pour le soin et
    ennemi_a_attaquer = monde.ennemis[choix - 2]
    bonus = joueur.degats_bonus
    joueur.attaque(ennemi_a_attaquer, bonus)
    degats_total += joueur.degats_bonus + joueur.degats
    joueur.degats_bonus = 0
  end
  #-----                                   ACTION DES ENNEMIS                                 -----#
  puts "\nLES ENNEMIS RIPOSTENT !"
  # l'ennemi attaque:
  monde.ennemis_en_vie.each do |ennemi|
    ennemi.attaque(joueur, 0) if ennemi.en_vie == true && joueur.en_vie == true
  end

  #-----                                     RESULTAT DU TOUR                                 -----#
  if joueur.en_vie == true && joueur.points_de_vie == 2
    puts "Se Balrog était à deux doigts de te l'enfiler Jean-Michel !"
  elsif joueur.en_vie == true
    puts "\nEtat du héro: #{joueur.info}\n"
  end

  # Si le jeu est fini, on interompt la boucle
  break if Jeu.est_fini(joueur, monde)
end

# A faire:
puts 'Résultat de la partie:'
puts "Nombre de tour:  #{nb_tour_total}"
puts "Dégâts infligés: #{degats_total}"
puts "Soins reçus: #{soin_total}"

if joueur.en_vie
  puts 'Vous avez gagné !'
else
  puts 'Vous avez perdu !'
end
