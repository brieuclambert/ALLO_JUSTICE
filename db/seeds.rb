
# # CREATE 4 USERS
user1 = User.create(email: "alizee.wyart@gmail.com", first_name: "Alizée", last_name: "Wyart", password: "lalalala")
user2 = User.create(email: "brieuc@bg.fr", first_name: "Briebrie", last_name: "Bitouille", password: "lalalala")
user3 = User.create(email: "nana@lou.love", first_name: "Nanette", last_name: "Bloomi", password: "lalalala")
user4 = User.create(email: "felix@lechat.miaou", first_name: "Felix", last_name: "Miaou", password: "lalalala")

# # CREATE 5 PROJECTS

# info project n°1
project1 = Project.new(name: "Abus de faiblesse")
project1.description = "L’abus de faiblesse consiste pour un professionnel à exploiter l’état d’ignorance, de vulnérabilité psychique ou psychologique du consommateur afin qu’il contracte. Les personnes concernées par l’abus de faiblesse sont celles qui ne sont pas en mesure d’apprécier les conséquences de leur engagement. Ce sont : les personnes âgées ; les personnes dont la santé est fragile ;les personnes ayant des difficultés à comprendre la langue française ; une situation d’urgence qui empêche le consommateur de réfléchir sur la portée de son acte."
project1.goal = 10000
project1.address = "57 rue de l'École Normale, Bordeaux"
project1.city ="Bordeaux"
project1.category = "Droit de succession"
project1.echeance= Date.new(2017, 3, 20)
project1.user = user1
# Image project N°1
url1 = "http://imagizer.imageshack.us/a/img922/9499/zSAh3G.jpg"
project1.photo_url = url1
project1.save

# info project n°2
project2 = Project.new(name: "Licenciement abusif @Ratp")
project2.description = "Le licenciement sera abusif lorsqu'une juridiction compétente (le Conseil de prud'hommes) l'aura considéré comme tel. Dans les faits, le salarié licencié pourra saisir le Conseil de prud'hommes s'il estime que certaines conditions n'ont pas été respectées (conditions de forme) ou si le licenciement n'est pas justifié par des motifs sérieux et réels (conditions de fonds)."
project2.goal = 5000
project2.address = "123 rue Pierre Corneille, Lyon"
project2.city ="Lyon"
project2.category = "Droit du travail"
project2.echeance= Date.new(2018, 7, 18)
project2.user = user2
# Image project N°2
url2 = "http://imageshack.com/a/img922/9751/Rb1wfm.jpg"
project2.photo_url = url2
project2.save

# info project n°3
project3 = Project.new(name: "Produit médical défecteux")
project3.description = "Le régime de la responsabilité médicale en matière de produits de santé défectueux, initialement défini pas la loi n° 98-389 du 19 mai 1998, a connu de nombreux bouleversements, notamment grâce à la jurisprudence de la Cour de justice des Communautés Européennes."
project3.goal = 30000
project3.address ="14 villa Gaudelet, Paris"
project3.city ="Paris"
project3.category = "Droit de la santé"
project3.echeance= Date.new(2020, 2, 12)
project3.user = user3
# Image project N°3
url3 = "http://imageshack.com/a/img921/74/7XE5Ka.jpg"
project3.photo_url = url3
project3.save

# info project n°4
project4 = Project.new(name: "Sauvons Sarko !")
project4.description = "Un ancien chef de l’État qui insulte la justice. L’un des plus hauts magistrats de France soupçonné d'être intervenu en sa faveur dans un dossier judiciaire. L'avocat et ami de l'ex-président en mauvaise posture. C'est l'institution judiciaire tout entière qui est salie."
project4.goal = 1000000
project4.address = "11, rue de l'église, Paris"
project4.city ="Paris"
project4.category = "Droit fiscal"
project4.echeance= Date.new(2017, 2, 28)
project4.user = user4
# Image project N°4
url4 = "http://imageshack.com/a/img923/9320/J4ppJj.jpg"
project4.photo_url = url4
project4.save

## Create contributions

contri1 = Contribution.new(amount: 670)
contri1.user = user1
contri1.project = project2
contri1.save

contri2 = Contribution.new(amount: 753)
contri2.user = user2
contri2.project = project3
contri2.save

contri3 = Contribution.new(amount: 903)
contri3.user = user3
contri3.project = project4
contri3.save

contri4 = Contribution.new(amount: 284)
contri4.user = user4
contri4.project = project1
contri4.save

contri5 = Contribution.new(amount: 934)
contri5.user = user2
contri5.project = project4
contri5.save

contri6 = Contribution.new(amount: 1023)
contri6.user = user1
contri6.project = project3
contri6.save


