# frozen_string_literal: true

# on crée la classe Examen
class Examen
  attr_accessor :sujet, :note

  def initialize(sujet, note)
    @sujet = sujet
    @note = note
  end
end

# on crée la classe Eleve
class Eleve
  attr_accessor :nom, :examens # on relie la classe Eleve à la classe Examen en ajoutant un attribut examens

  def initialize(nom, examens)
    @nom = nom
    @examens = examens
  end
end

# on crée deux examens
crypto = Examen.new('cryptologie', 20)
maths = Examen.new('maths', 20)

# on les relie à un objet de la classe Eleve
eleve_brilliant = Eleve.new('Alan', [crypto, maths])
