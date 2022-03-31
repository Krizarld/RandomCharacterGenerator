class Character < ApplicationRecord

  POSSIBLE_GENDERS = ["Masculin","Féminin","Inconnu"]
  POSSIBLE_RACES = ["Humain","Nain","Elfe Sylvain","Elfe Noir","Elfe de la Nuit","Orc","Goblin","Homme-lion","Homme-lézard","Drakéide","Homme-oiseau","Homme-poisson","Homme-félin","Vampire","Démon","Ange"]
  POSSIBLE_CLASSES = ["Barbare","Bretteur","Chevalier","Guerrier","Gardien","Moine","Paladin","Pugiliste","Archer","Chasseur","Pistolero","Assassin","Voleur","Alchimiste","Ingénieur","Barde","Clerc","Druide","Élementaliste","Mage","Invocateur","Nécromancien","Sorcier","Rôdeur","Roublard","Occultiste","Ensorceleur"]
  POSSIBLE_ALIGNMENTS = ["Croisé (Loyal et bon)","Bienfaiteur (Neutre et bon)","Rebelle (Chaotique mais bon)","Juge (Loyal et neutre)","Réconciliateur (Neutre)","Esprit libre (Chaotique et neutre)","Dominateur (Loyal mais mauvais)","Malfaisant (Neutre et mauvais)","Destructeur (Chaotique et mauvais)"]
  POSSIBLE_PERSONALITIES = ["Architecte (INTJ)","Logicien (INTP)","Commandant (ENTJ)","Innovateur (ENTP)","Avocat (INFJ)","Médiateur (INFP)","Protagoniste (ENFJ)","Inspirateur (ENFP)","Logisticien (ISTJ)","Défenseur (ISFJ)","Directeur (ESTJ)","Consul (ESFJ)","Virtuose (ISTP)","Aventurier (ISFP)","Entrepreneur (ESTP)","Amuseur (ESFP)"]
  POSSIBLE_QUALITIES = ["Accessible","Accueillant (e)","Adroit(e)","Agréable","Aidant(e)","Aimable","Altruiste","Ambitieux (euse)","Amusant(e)","Apaisant(e)","Résilient(e)","Appliqué(e)","Assertif(ive)","Astucieux(euse)","Attachant","Attentif(ive)","Attentionné(e)","Audacieux(euse)","Autonome","Avenant(e)","Aventureux(euse)","Beau(belle!)","Bienveillant(e)","Brillant(e)","Calme","Captivant(e)","Chaleureux","Charismatique","Charmant(e)","Combatif(ive)","Communicatif(ive)","Compréhensif(ive)","Concentré (capacité à être)","Conciliant(e)","Confiant(e)","Conformiste","Consciencieux","Convaincant(e)","Coopératif(ive)","Courageux(euse)","Courtois(e)","Créatif(ive)","Cultivé(e)","Curieux(euse)","Débrouillard(e)","Décidé(e)","Délicat(e)","Déterminé(e)","Dévoué(e)","Digne de confiance","Discipliné","Diplomate","Direct(e)","Discipliné(e)","Discret(e)","Disert(e)","Disponible","Doux(ouce)","Droit(e)","Drôle","Dynamique","Ecoute (à l’)","Efficace","Eloquent(e)","Empathique","Encourageant(e)","Endurant(e)","Energique","Engagé","Enthousiaste","Entreprenant","Epanoui(e)","Equitable","Esprit d’équipe","Exemplaire","Extraverti(e)","Ferme","Fidèle","Fin(e)","Flexible","Fort(e)","Franc(he)","Gai(e)","Généreux(euse)","Gentil(le)","Habile","Hardi(e)","Honnête","Humain(e)","Humble","Imaginatif(ive)","Impliqué(e)","Impulsif(ive)","Indépendant(e)","Indulgent(e)","Infatigable","Influent(e)","Ingénieux(euse)","Innovateur(trice)","Inspiré(e)","Intelligent(e)","Intègre","Intuitif(ive)","Inventif(ive)","Joueur(euse)","Jovial(e)","Juste","Leader","Logique","Loyal(e)","Lucide","Maître de soi","Malin(igne)","Marrant(e)","Méthodique","Mignon(ne)","Minutieux(euse)","Modeste","Motivé(e)","Naturel(le)","Novateur(trice)","Nuancé(e)","Objectif(ive)","Observateur(trice)","Obstiné(e)","Opiniâtre","Optimiste","Ordonné(e)","Organisateur(trice)","Organisé(e)","Original(e)","Ouvert(e) d’esprit","Pacificateur(trice)","Paisible","Passionnant(e)","Patient(e)","Persévérant(e)","Persuasif(ive)","Pétillante(e)","Philosophe","Planificateur(trice)","Poli(e)","Polyvalent(e)","Ponctuel(le)","Pondéré(e)","Posé(e)","Positif(ive)","Pragmatique","Pratique","Précis(e)","Prévenant(e)","Prévoyant(e)","Productif(ive)","Protecteur(trice)","Prudent(e)","Pugnace","Quièt(e)","Raisonnable","Rassurant(e)","Rationnel(le)","Réaliste","Réconfortant(e)","Réfléchi(e)","Réservé(e)","Résistant(e)","Résolu(e)","Respectueux(euse)","Responsable","Rigolo(te)","Rigoureux(euse)","Rusé(e)","Sage","Séduisant(e)","Sensible","Serein(e)","Sérieux(euse)","Serviable","Sincère","Sociable","Social(e)","Soigneux(euse)","Solide","Souple","Souriant(e)","Spontané(e)","Sportif(ive)","Stable","Stratège","Studieux(euse)","Sûr(e)desoi","Sympa(thique!)","Talentueux(euse)","Tempéré(e)","Tenace","Tendre","Tolérant(e)","Timide","Tranquille","Travailleur(euse)","Vaillant(e)","Valeureux(euse)","Vif(ive)","Vigilant(e)","Volontaire","Vrai(e)","Zen"]
  POSSIBLE_FAULTS = ["Abrupt(e)","Académique","Acerbe","Accro","Agressif(ive)","Aigri(e)","Amateur(trice)","Ambitieux(euse)","Amorphe","Anxieux(euse)","Arbitraire","Arriviste","Arrogant(e)","Asocial(e)","Assisté(e)","Autoritaire","Autorité (manque d’)","Avare","Bagarreur(euse)","Baratineur(euse)","Bavard(e)","Blasé(e)","Blessant(e)","Borné(e)","Boudeur(euse)","Brouillon(ne)","Brute","Bruyant(e)","Cachottier(e)","Calculateur(trice)","Capricieux(euse)","Caricatural(e)","Carriériste","Cassant(e)","Catastrophiste","Castrateur(trice)","Caustique","Censeur(euse)","Cérémonieux","Chicaneur(euse)","Coléreux(euse)","Complexé(e)","Compliqué(e)","Confiance (manque de)","Confus(e)","Conventionnel(le)","Critiqueur(euse)","Cruel(le)","Débordé(e)","Défaitiste","Dépensier(e)","Désobéissant(e)","Désinvolte","Distrait(e)","Docile","Ecoute (manque d’)","Égocentrique","Égoïste","Émotif(ive)","Emporté(e)","Envahissant(e)","Envieux(euse)","Étourdi(e)","Excessif(ive)","Familier(e)","Fantasque","Fataliste","Formaliste","Frondeur(euse)","Guindé(e)","Grossier(e)","Hésitant(e)","Humiliant(e)","Hyperactif(ive)","Hypocrite","Immature","Impatient(e)","Imprudent(e)","Impulsif(ive)","Inaccessible","Inattentif(ive)","Incompétent(e)","Inconstant(e)","Inculte","Indécis(e)","Indépendant(e)","Indiscret(e)","Individualiste","Influençable","Insignifiant(e)","Insouciant(e)","Instable","Illogique","Intolérant(e)","Intransigeant(e)","Introverti(e)","Irrespectueux(euse)","Irresponsable","Jaloux(se)","Laxiste","Léger(e)","Lent(e)","Lourd(e)","Lunatique","Macho","Maladroit(e)","Mal à l’aise à l’oral","Mal à l’aise en groupe","Mal à l’aise au téléphone","Mal élevé(e)","Maniaque","Maniéré(e)","Manipulateur(trice)","Méchant(e)","Médiocre","Médisant(e)","Méfiant(e)","Mégalomane","Menteur(euse)","Méprisant(e)","Mesquin(e)","Misogyne","Mou(olle)","Muet(te)","Mythomane","Naïf(ïve)","Négatif(ive)","Négligeant(e)","Nerveux(euse)","Nonchalant(e)","Obstiné(e)","Obtus(e)","Opiniâtre","Orgueilleux(euse)","Paresseux(euse)","Passif(ive)","Pédant(e)","Pessimiste","Peu à l’aise à l’oral","Peu à l’aise en langues","Peu autonome sur Word","Peu résistant au stress","Peureux(euse)","Plaintif(ive)","Planqué(e)","Pointilleux(euse)","Prétentieux(euse)","Procrastinateur(euse)","Prudent(e)","Qui sait tout","Raciste","Radin(e)","Râleur(euse)","Rancunier(e)","Reconnaissance (besoin de)","Renfermé(e)","Résigné(e)","Rétrograde","Revanchard(e)","Rêveur(euse)","Rigide","Ringard(e)","Rouspéteur(euse)","Routinier(e)","Sans gêne","Secret(e)","Sensible","Solitaire","Soupçonneux(euse)","Sournois(e)","Stressé(e)","Stupide","Superficiel(le)","Susceptible","Tatillon(ne)","Temps (gestion du)","Têtu(e)","Timide","Triste","Trop calme","Trop curieux(euse)","Trop gentil(le)","Vaniteux(euse)","Versatile","Vulgaire"]
  POSSIBLE_COLORS = ["Abricot","Absinthe","Acajou","Aigue-marine","Aile de corbeau","Albâtre","Alezan","Amande","Amarante","Ambre jaune","Ambre rouge","Améthyste","Anthracite","Aquilain","Ardoise","Argent","Argile","Asperge","Aubergine","Auburn","Aurore","Avocat","Azur (héraldique)","Azur","Azurin","Baillet","Banane","Basané","Beige","Beigeasse","Beurre","Beurre frais","Bis","Bisque","Bistre","Bitume","Blanc","Blanc cassé","Blanc crème","Blanc d’argent","Blanc d’Espagne","Blanc de céruse","Blanc de Chine","Blanc de lait","Blanc de Meudon","Blanc de plomb","Blanc de Troyes","Blanc de zinc","Blanc lunaire","Blanc neige","Blanc-bleu","Blé","Blet","Bleu cyan","Bleu acier","Bleu ardoise","Bleu azur","Bleu barbeau","Bleu bleuet","Bleu canard","Bleu céleste","Bleu cérule","Bleu céruléen","Bleu charrette","Bleu charron","Bleu ciel","Bleu cobalt","Bleu d’Anvers","Bleu de cobalt","Bleu de France","Bleu de minuit","Bleu de Prusse","Bleu des mers du sud","Bleu dragée","Bleu électrique","Bleu France","Bleu fumée","Bleu givré","Bleu guède","Bleu hussard","Bleu Klein","Bleu lavande","Bleu Majorelle","Bleu marine","Bleu minéral","Bleu nuit","Bleu outremer","Bleu paon","Bleu persan","Bleu pétrole","Bleu primaire","Bleu roi","Bleu roy","Bleu saphir","Bleu sarcelle","Bleu turquin","Bleu turquoise","Blondeur","Blond vénitien","Bordeaux","Bourgogne","Bouton d’or","Brun","Bureau","Brique","Bronze","Brou de noix","Brun clair","Caca d’oie","Cacao","Cachou","Caeruléum","Café","Café au lait","Cannelle","Capucine","Caramel","Carmin","Carnation","Carné","Carotte","Cassis","Céladon","Cerise","Céruléen","Chair","Chamois","Champagne","Charbonneux","Châtaigne","Châtain","Chaudron","Chenu","Chocolat","Cinabre","Citron","Citrouille","Clarissimo","Claro","Claro claro","Colombin","Colorado","Colorado claro","Coquelicot","Coquille d’oeuf","Corail","Cramoisi","Crème","Cuisse de nymphe","Cuisse de nymphe émue","Cuivre","Cyan clair","Denim","Dorian","Double claro","Écarlate","Écru","Émeraude","Étain oxydé","Étain pur","Fauve","Fer","Feu vif","Feuille-morte","Flave","Fleur de soufre","Fraise","Fraise écrasée","Framboise","Fuchsia","Garance","Glauque","Glycine","Grège","Grenadine","Grenat","Gris","Gris acier","Gris anthracite","Gris de lin","Gris de maure","Gris de Payne","Gris fer","Gris fumée","Gris perle","Gris plomb","Gris souris","Gris taupe","Gris tourdille","Gris tourterelle","Groseille","Gueules","Havane","Héliotrope","Hoto","Incarnadin","Incarnat","Indigo","Isabelle","Ivoire","Jade","Jais","Jaune","Jaune auréolin","Jaune banane","Jaune bouton d’or","Jaune canari","Jaune citron","Jaune d’or","Jaune de chrome","Jaune de Mars","Jaune de Naples","Jaune fleur de soufre","Jaune impérial","Jaune maïs","Jaune mimosa","Jaune moutarde","Jaune nankin","Jaune paille","Jaune soufre","Kaki","Lapis-lazuli","Lavallière","Lavande","Lie de vin","Lilas","Lin","Maduro","Magenta","Magenta fushia","Magenta foncé","Maïs","Malachite","Mandarine","Marine","Marron","Mastic","Mauve","Melon","Menthe","Menthe à l’eau","Miel","Mordoré","Moreau","Moutarde","Nacarat","Nankin","Neige","Noir","Noir animal","Noir charbon","Noir d’aniline","Noir d’encre","Noir d’ivoire","Noir de carbone","Noir de fumée","Noir de jais","Noiraud","Noisette","Ocre rouge","Ocre jaune","Olive","Opalin","Or","Orange","Orange brûlée","Orchidée","Orpiment","Orpin de Perse","Oscuro","Paille","Papaye","Papier bulle","Parme","Passe-velours","Pastel","Pêche","Pelure d’oignon","Pervenche","Pinchard","Pistache","Platine","Plomb","Poil de chameau","Ponceau","Pourpre","Prasin","Prune","Puce","Queue-de-renard","Queue-de-vache foncé","Queue-de-vache clair","Réglisse","Rose","Rose balais","Rose bonbon","Rose dragée","Rose fuchsia","Rose Mountbatten","Rose thé","Rouge vif","Rouge Andrinople","Rouge anglais","Rouge Bismarck","Rouge bordeaux","Rouge bourgogne","Rouge capucine","Rouge cardinal","Rouge carmin","Rouge cerise","Rouge cinabre","Rouge coquelicot","Rouge d’alizarine","Rouge d’Andrinople","Rouge d’aniline","Rouge de Mars","Rouge écrevisse","Rouge feu","Rouge fraise","Rouge framboise","Rouge grenadine","Rouge grenat","Rouge groseille","Rouge magenta","Rouge ponceau","Rouge sang","Rouge tomate","Rouge tomette","Rouge turc","Rouge vermillon","Rouille","Roux","Sable","Safran","Safre","Sang de bœuf","Sanguine","Saphir","Sarcelle","Saumon","Senois","Sépia","Sinople","Smalt","Smaragdin","Soufre","Souris","Tabac","Tanné","Tangerine","Taupe","Terre d’ombre","Terre de Sienne","Terre de Sienne brûlée","Tomate","Topaze","Tourterelle","Turquoise","Ultra Violet","Vanille","Ventre de biche","Vermeil","Vermillon","Vert primaire","Vert absinthe","Vert amande","Vert anis","Vert avocat","Vert bouteille","Vert céladon","Vert chartreuse","Vert d’eau","Vert de chrome","Vert de gris","Vert de Hooker","Vert de vessie","Vert épinard","Vert gazon","Vert impérial","Vert jade","Vert kaki","Vert lichen","Vert lime","Vert malachite","Vert mélèze","Vert menthe","Vert menthe à l’eau","Vert militaire","Vert mousse","Vert olive","Vert opaline","Vert perroquet","Vert pin","Vert pistache","Vert poireau","Vert pomme","Vert prairie","Vert printemps","Vert sapin","Vert sauge","Vert tilleul","Vert turquoise","Vert Véronèse","Vert céladon","Violet","Violet d’évêque","Violine","Viride","Wisteria","Xanadu","Yahourt","Zinzolin"]


  def randomize
    self.age = rand(12..85)
    self.gender = POSSIBLE_GENDERS.sample
    self.race = POSSIBLE_RACES.sample
    self.jobclass = POSSIBLE_CLASSES.sample
    self.alignment = POSSIBLE_ALIGNMENTS.sample
    self.personality = POSSIBLE_PERSONALITIES.sample
    self.mainquality = POSSIBLE_QUALITIES.sample
    self.mainfault = POSSIBLE_FAULTS.sample
    self.haircolor = POSSIBLE_COLORS.sample
    self.eyescolor = POSSIBLE_COLORS.sample
  end
end
