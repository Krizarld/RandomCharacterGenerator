class Character < ApplicationRecord

  POSSIBLE_RACES = [
    "Humain",
    "Nain","Elfe Sylvain","Elfe Noir","Elfe de la Nuit","Orc","Goblin","Homme-lion","Homme-lézard","Drakéide","Homme-oiseau","Homme-poisson","Homme-félin","Vampire","Démon","Ange""Humain","Nain","Elfe Sylvain","Elfe Noir","Elfe de la Nuit","Orc","Goblin","Homme-lion","Homme-lézard","Drakéide","Homme-oiseau","Homme-poisson","Homme-félin","Vampire","Démon","Ange"
  ]

  def randomize
    self.race = POSSIBLE_RACES.sample
  end
end
