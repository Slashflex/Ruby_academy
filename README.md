# Ruby_academy

# La Composition
### !!! La composition consiste à faire interagir des classes qui représentent des objets très différents entre eux. !!!

## Pour faire de la composition, on crée un attribut dans une classe dans lequel on pourra préciser des informations d'une autre classe.
```ruby
#on crée la classe Examen
class Examen
	attr_accessor :sujet, :note

	def initialize(sujet, note)
		@sujet = sujet    
		@note = note
	end
end

#on crée la classe Eleve

class Eleve
#on relie la classe Eleve à la classe Examen en ajoutant un attribut examens
	attr_accessor :nom, :examens
	  
	def initialize(nom,examens)
		@nom = nom
		@examens = examens
	end
end

#on crée deux examens
crypto = Examen.new("cryptologie",20)
maths = Examen.new("maths",20)

#on les relie à un objet de la classe Eleve
eleve_brilliant = Eleve.new("Alan", [crypto,maths])
```

### !!! Pour exécuter un fichier Ruby à partir de la console, placez votre console dans le répertoire contenant le fichier et tapez !!!
### ruby nom_du_fichier.rb

# Les Boucles
## Boucle pour parcourir un tableau:
```ruby
jours_ouvres = [
    "lundi", "mardi", "mercredi", "jeudi", "vendredi"
]
i = jours_ouvres.size
jours_ouvres.each do |jour|

    if jour == "vendredi"
        puts jour + " : Bon weekend !"

    elsif jour == "lundi"
        puts jour + " : Bon courage !"
    else
puts jour + " : Weekend dans #{i} jours !"
    end
    i -= 1
end```

# Les classes
### !!! Pour connaître la classe d'un objet de Ruby, il existe une méthode class  qui s'appelle ainsi :nom_de_l_objet.class   !!!

## Pour créer une classe et lui donner des attributs, on utilise les mots-clé class  et attr_accessor:

```RUBY
class Utilisateur
        attr_accessor :prenom, :nom
end

# Pour créer une instance de classe, on utilise la méthode "new"  selon la syntaxe suivante 
# :nom_de_l_objet = nom_de_la_classe.new. 
# Puis on spécifie les attributs de l'instance comme ceci : 
bob = Eleve.new
bob.prenom = "Bob"


# On peux aussi, et surtout, utiliser "initialize" au moment de l'instance:
class Animal
    attr_accessor :nom

    def initialize(nom)
        @nom = nom
    end
end

mon_chien = Animal.new("Bob le chien")


# Faire un héritage à l'aide de "<":
class Chien < Animal
    def parler
        puts  "#{nom}: Whouaf !"
    end
end
```
  

**On peut ajouter des conditions pour réaliser différentes actions dans Ruby selon le cas à l'aide des mots-clés if, else, elsif**



## Les conditions

```ruby
trajet_minutes = 10

if trajet_minutes > 120
  puts "Prends un film avec toi"
elsif trajet_minutes < 5
  puts "Pas le temps de t'asseoir..."
else
  puts "Tu as le temps de lire au moins quelques chapitres d'un bouquin !"
end
```



## Combinez les conditions: (ET = &&) (OU = ||)



```ruby
a = 12
b = "hello"

if (a == 12 || a == 10) && b == "hello"
  puts "victory"
else
  puts "defeat"
end
```



## Les booléens:

_Par défaut, c’est “SI = TRUE”_

```ruby
if ma_variable
  puts “c’est true”
else
  puts “c’est false”
end
```

### !!! Une méthode (aussi appelée fonction) est une série d'actions. Elle se définit à l'intérieur d'une classe en commençant par le mot-clé def et se termine par end.   !!!

## Sans paramètres:

```RUBY
def nom_complet
    prenom + " " + nom
end
```

## Avec paramètres:

```RUBY
def habite_en(valeur)
    valeur == pays
end
```

# Les tableaux
## Créer un tableau:
```RUBY
mon_tableau = [
    "Paris", "Toronto", "NYC"
]
```

## Nombre d’élément d’un tableau:

```RUBY
mon_tableau.size
```

## Inverser l’ordre d’un tableau:

```RUBY
mon_tableau.reverse
```

## Position d’un élément du tableau:

```RUBY
mon_tableau.[1] (renvoie la seconde valeur du tableau)
```

## Ajouter un élément au tableau:

```RUBY
mon_tableau << “nom_element”
```

## Modifier élément du tableau:

```RUBY
mon_tableau[emplacement ciblé] = “nouvelle valeur”
```

## Créer une table de hashage:

```RUBY
mon_hashage = { paris: 0, toronto: 7, nyc: 3 }
```


## Accéder à la valeur d’un élément dans un hash:

```RUBY
mon_hashage[:toronto]
```

## Accéder à la valeur d’un élément dans un hash pour l’intégrer dans une chaîne de caractère:

```RUBY
voyages.each do |voyage|
       puts "Voyage à #{voyage[:ville]} de #{voyage[:duree]} jours "
end
```

## Modifier la valeur d’un élément OU Ajouter un élément dans un hash:

```RUBY
mon_hashage.[:toronto]= 5 // mon_hashage.[:new] = 11
```

# Ruby On Rails
## Installer Rails sur Windows

* Aller sur: http://railsinstaller.org/fr-FR et installer la version la plus récente pour Windows (2.3 à l'heure ou j'écris)
* Lancer railsinsaller, en gardant tout cocher (comme par défaut normalement)
* A la fin, une console s'ouvre et vous invites a configurer votre environnement en commençant pas vous identifier.
1. Votre Prénom / Nom
2. Votre Email
* Vous pouvez ensuite taper dans cette même console: gem install bundler 
```
Fetching: bundler-2.0.1.gem (100%)
Successfully installed bundler-2.0.1
Parsing documentation for bundler-2.0.1
Installing ri documentation for bundler-2.0.1
Done installing documentation for bundler after 17 seconds
1 gem installed
```
*Ensuite, tapez: rails -v (afin de vérifier si vous avez bien rails et quel version)
```
Rails 5.1.3
```
*Puis tapez: rails new test_app (vous allez installer les fondations d'un "premier site" pour vérifier)
```
create
      create  README.md
      create  Rakefile
      create  config.ru
      create  .gitignore
      create  Gemfile
         run  git init from "."
Initialized empty Git repository in C:/Sites/test_app/.git/
      create  app
      create  app/assets/config/manifest.js
      create  app/assets/javascripts/application.js
      create  app/assets/javascripts/cable.js
      create  app/assets/stylesheets/application.css
      create  app/channels/application_cable/channel.rb
      create  app/channels/application_cable/connection.rb
      create  app/controllers/application_controller.rb
      create  app/helpers/application_helper.rb
      create  app/jobs/application_job.rb
      create  app/mailers/application_mailer.rb
      create  app/models/application_record.rb
      create  app/views/layouts/application.html.erb
      create  app/views/layouts/mailer.html.erb
      create  app/views/layouts/mailer.text.erb
      create  app/assets/images/.keep
      create  app/assets/javascripts/channels
      create  app/assets/javascripts/channels/.keep
      create  app/controllers/concerns/.keep
      create  app/models/concerns/.keep
      create  bin
      create  bin/bundle
      create  bin/rails
      create  bin/rake
      create  bin/setup
      create  bin/update
      create  bin/yarn
      create  config
      create  config/routes.rb
      create  config/application.rb
      create  config/environment.rb
      create  config/secrets.yml
      create  config/cable.yml
      create  config/puma.rb
      create  config/environments
      create  config/environments/development.rb
      create  config/environments/production.rb
      create  config/environments/test.rb
      create  config/initializers
      create  config/initializers/application_controller_renderer.rb
      create  config/initializers/assets.rb
      create  config/initializers/backtrace_silencers.rb
      create  config/initializers/cookies_serializer.rb
      create  config/initializers/cors.rb
      create  config/initializers/filter_parameter_logging.rb
      create  config/initializers/inflections.rb
      create  config/initializers/mime_types.rb
      create  config/initializers/new_framework_defaults_5_1.rb
      create  config/initializers/wrap_parameters.rb
      create  config/locales
      create  config/locales/en.yml
      create  config/boot.rb
      create  config/database.yml
      create  db
      create  db/seeds.rb
      create  lib
      create  lib/tasks
      create  lib/tasks/.keep
      create  lib/assets
      create  lib/assets/.keep
      create  log
      create  log/.keep
      create  public
      create  public/404.html
      create  public/422.html
      create  public/500.html
      create  public/apple-touch-icon-precomposed.png
      create  public/apple-touch-icon.png
      create  public/favicon.ico
      create  public/robots.txt
      create  test/fixtures
      create  test/fixtures/.keep
      create  test/fixtures/files
      create  test/fixtures/files/.keep
      create  test/controllers
      create  test/controllers/.keep
      create  test/mailers
      create  test/mailers/.keep
      create  test/models
      create  test/models/.keep
      create  test/helpers
      create  test/helpers/.keep
      create  test/integration
      create  test/integration/.keep
      create  test/test_helper.rb
      create  test/system
      create  test/system/.keep
      create  test/application_system_test_case.rb
      create  tmp
      create  tmp/.keep
      create  tmp/cache
      create  tmp/cache/assets
      create  vendor
      create  vendor/.keep
      create  package.json
      remove  config/initializers/cors.rb
      remove  config/initializers/new_framework_defaults_5_1.rb
         run  bundle install
Fetching gem metadata from https://rubygems.org/.............
Fetching gem metadata from https://rubygems.org/.
Resolving dependencies....
Fetching rake 12.3.2
Installing rake 12.3.2
Fetching concurrent-ruby 1.1.5
Installing concurrent-ruby 1.1.5
Fetching i18n 1.6.0
Installing i18n 1.6.0
Fetching minitest 5.11.3
Installing minitest 5.11.3
Using thread_safe 0.3.6
Fetching tzinfo 1.2.5
Installing tzinfo 1.2.5
Fetching activesupport 5.1.7
Installing activesupport 5.1.7
Using builder 3.2.3
Fetching erubi 1.8.0
Installing erubi 1.8.0
Fetching mini_portile2 2.4.0
Installing mini_portile2 2.4.0
Fetching nokogiri 1.10.2 (x86-mingw32)
Installing nokogiri 1.10.2 (x86-mingw32)
Using rails-dom-testing 2.0.3
Fetching crass 1.0.4
Installing crass 1.0.4
Fetching loofah 2.2.3
Installing loofah 2.2.3
Fetching rails-html-sanitizer 1.0.4
Installing rails-html-sanitizer 1.0.4
Fetching actionview 5.1.7
Installing actionview 5.1.7
Fetching rack 2.0.7
Installing rack 2.0.7
Fetching rack-test 1.1.0
Installing rack-test 1.1.0
Fetching actionpack 5.1.7
Installing actionpack 5.1.7
Fetching nio4r 2.3.1
Installing nio4r 2.3.1 with native extensions
Fetching websocket-extensions 0.1.3
Installing websocket-extensions 0.1.3
Using websocket-driver 0.6.5
Fetching actioncable 5.1.7
Installing actioncable 5.1.7
Fetching globalid 0.4.2
Installing globalid 0.4.2
Fetching activejob 5.1.7
Installing activejob 5.1.7
Fetching mini_mime 1.0.1
Installing mini_mime 1.0.1
Fetching mail 2.7.1
Installing mail 2.7.1
Fetching actionmailer 5.1.7
Installing actionmailer 5.1.7
Fetching activemodel 5.1.7
Installing activemodel 5.1.7
Using arel 8.0.0
Fetching activerecord 5.1.7
Installing activerecord 5.1.7
Fetching public_suffix 3.0.3
Installing public_suffix 3.0.3
Fetching addressable 2.6.0
Installing addressable 2.6.0
Fetching bindex 0.7.0
Installing bindex 0.7.0 with native extensions
Using bundler 2.0.1
Fetching byebug 11.0.1
Installing byebug 11.0.1 with native extensions
Fetching xpath 3.2.0
Installing xpath 3.2.0
Fetching capybara 2.18.0
Installing capybara 2.18.0
Fetching ffi 1.10.0 (x86-mingw32)
Installing ffi 1.10.0 (x86-mingw32)
Fetching childprocess 0.9.0
Installing childprocess 0.9.0
Using coffee-script-source 1.12.2
Using execjs 2.7.0
Using coffee-script 2.4.1
Fetching method_source 0.9.2
Installing method_source 0.9.2
Fetching thor 0.20.3
Installing thor 0.20.3
Fetching railties 5.1.7
Installing railties 5.1.7
Using coffee-rails 4.2.2
Fetching multi_json 1.13.1
Installing multi_json 1.13.1
Fetching jbuilder 2.8.0
Installing jbuilder 2.8.0
Fetching puma 3.12.1
Installing puma 3.12.1 with native extensions
Fetching sprockets 3.7.2
Installing sprockets 3.7.2
Using sprockets-rails 3.2.1
Fetching rails 5.1.7
Installing rails 5.1.7
Fetching rb-fsevent 0.10.3
Installing rb-fsevent 0.10.3
Fetching rb-inotify 0.10.0
Installing rb-inotify 0.10.0
Fetching rubyzip 1.2.2
Installing rubyzip 1.2.2
Using sass-listen 4.0.0
Fetching sass 3.7.4
Installing sass 3.7.4
Fetching tilt 2.0.9
Installing tilt 2.0.9
Fetching sass-rails 5.0.7
Installing sass-rails 5.0.7
Fetching selenium-webdriver 3.141.0
Installing selenium-webdriver 3.141.0
Fetching sqlite3 1.4.0
Installing sqlite3 1.4.0 with native extensions
Gem::Ext::BuildError: ERROR: Failed to build gem native extension.

current directory:
C:/RailsInstaller/Ruby2.3.3/lib/ruby/gems/2.3.0/gems/sqlite3-1.4.0/ext/sqlite3
C:/RailsInstaller/Ruby2.3.3/bin/ruby.exe -r ./siteconf20190409-6096-3ib5kz.rb
extconf.rb
checking for sqlite3.h... no
sqlite3.h is missing. Install SQLite3 from http://www.sqlite.org/ first.
*** extconf.rb failed ***
Could not create Makefile due to some reason, probably lack of necessary
libraries and/or headers.  Check the mkmf.log file for more details.  You may
need configuration options.

Provided configuration options:
        --with-opt-dir
        --without-opt-dir
        --with-opt-include
        --without-opt-include=${opt-dir}/include
        --with-opt-lib
        --without-opt-lib=${opt-dir}/lib
        --with-make-prog
        --without-make-prog
        --srcdir=.
        --curdir
        --ruby=C:/RailsInstaller/Ruby2.3.3/bin/$(RUBY_BASE_NAME)
        --with-sqlcipher
        --without-sqlcipher
        --with-sqlite3-config
        --without-sqlite3-config
        --with-pkg-config
        --without-pkg-config
        --with-sqlcipher
        --without-sqlcipher
        --with-sqlite3-dir
        --without-sqlite3-dir
        --with-sqlite3-include
        --without-sqlite3-include=${sqlite3-dir}/include
        --with-sqlite3-lib
        --without-sqlite3-lib=${sqlite3-dir}/lib

To see why this extension failed to compile, please check the mkmf.log which can
be found here:

C:/RailsInstaller/Ruby2.3.3/lib/ruby/gems/2.3.0/extensions/x86-mingw32/2.3.0/sqlite3-1.4.0/mkmf.log

extconf failed, exit code 1

Gem files will remain installed in
C:/RailsInstaller/Ruby2.3.3/lib/ruby/gems/2.3.0/gems/sqlite3-1.4.0 for
inspection.
Results logged to
C:/RailsInstaller/Ruby2.3.3/lib/ruby/gems/2.3.0/extensions/x86-mingw32/2.3.0/sqlite3-1.4.0/gem_make.out

An error occurred while installing sqlite3 (1.4.0), and Bundler cannot continue.
Make sure that `gem install sqlite3 -v '1.4.0' --source 'https://rubygems.org/'`
succeeds before bundling.

In Gemfile:
  sqlite3
```
* Faites: cd test_app
* Puis: bundler exec rails server (il y a un taux élevé que vous obteniez une horreur de ce genre ci-dessous)
```
Could not find gem 'uglifier (>= 1.3.0) x86-mingw32' in any of the gem sources listed in your Gemfile.
Run `bundle install` to install missing gems.
```
* A ce moment, tapez ceci: gem install nomDeLaGem (une liste ci-dessous des gems a installer)
1. gem install uglifier
2. gem install turbolinks
3. gem install web-console
4. gem install tzinfo-data
* Il est temps de retenter la commande: bundler exec rails server
```
Fetching: tzinfo-data-1.2019.1.gem (100%)
Successfully installed tzinfo-data-1.2019.1
Parsing documentation for tzinfo-data-1.2019.1
Installing ri documentation for tzinfo-data-1.2019.1
Done installing documentation for tzinfo-data after 0 seconds
1 gem installed

C:\Sites\test_app>bundler exec rails server
=> Booting Puma
=> Rails 5.1.7 application starting in development
=> Run `rails server -h` for more startup options
*** SIGUSR2 not implemented, signal based restart unavailable!
*** SIGUSR1 not implemented, signal based restart unavailable!
*** SIGHUP not implemented, signal based logs reopening unavailable!
Puma starting in single mode...
* Version 3.12.1 (ruby 2.3.3-p222), codename: Llamas in Pajamas
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://localhost:3000
Use Ctrl-C to stop
```
C'est une victoire, pour le vérifier, il suffit d'aller sur: http://localhost:3000


rails new "chemin" = créer un dossier rails

cd "chemin../" = être à la racine du dossier désiré

rails s = lancer le serveur

rails g controller pages home = génère la première page

http://localhost:3000/pages/home = lien pour vérifier que ça fonction bien (ne pas oublier rails s)

Les symboles « <% … %> » permettent d’exécuter du Ruby, et le symbole « = » est un raccourci pour puts.

Dans un contrôleur, seules les variables commençant par arobase (@) sont accessibles depuis la vue.

***

Réécriture d'url = get 'pages/home' (devient)  get 'nom désiré' => 'pages#home'

Pour modifier un url = get 'books/index' (devient) get 'books' => 'books#index' (les liens auront uniquement "books" du coup)

Dire qu'il s'agit de la racine = root 'pages#home' (pages#home = chemin vers le fichier)

Dans le cas d'un POST se déroulant au root = post "/" => "dossier#method" (form_tag "/" également)

Dire qu'il s'agit d'une route dédié à modifier la bdd = patch 'books/:id' => 'books#update'
***


Views/layouts contient l'équivalent des "template" dans lequel la variable <%= yield %> renvoie le contenu des views.

## base de donnée

Créer une table (migration) = rails generate migration TableBooks (voir dossier db > migrate)


Contenu d'une "migration"= 
* Deux étapes 

* Nous utilisons la fonction create_table, qui prend pour argument le nom de la table à créer ;

* Nous ajoutons une colonne avec la fonction add_column, qui prend trois arguments : le nom de la table sur laquelle ajouter la colonne, le nom de la colonne et son type.
```RUBY
class TableBooks < ActiveRecord::Migration
  def change
    create_table :books
    add_column :books, :title, :string
  end
end
```

Pour valider la migration = rake db:migrate

Pour exploiter notre base de données avec Rails, pour ajouter et supprimer des lignes = Créez un fichier dans app/models/nomausingulierdelatable.rb (on dit que ce fichier est un modèle)

```RUBY
class Book < ActiveRecord::Base
end
```

***

Pour vérifier que tout va bien, dans le terminal, tapez cette commande : rails console

_Cette commande est un « super irb ». C’est un irb qui inclut toutes les classes de votre site. Dans la console rails, tapez :_ Book.new

Le résultat doit être: #<Book id: nil, title: nil>

Rails a bien fait la liaison avec votre base de données, c’est pour cela que l’on voit notre colonne « title » apparaître. Tapez exit pour sortir de la console rails.

***
```RUBY
rails c = ouvrir la super console ! 
nomDeLigne = nomDeTable.new
nomDeLigne.title = "titre que tu veux" OU modifier titre
nomDeLigne.save = insert et/ou sauvegarder dans la Table concerné
nomDeLigne.destroy = supprimer la ligne de la table
nomDeTable.find(id) = retourner la ligne possédant cette id
nomDeTable.find(1).destroy
nomDeTable.all = affiche toutes les lignes de cette table
```

***
```RUBY
rails c = ouvrir la super console ! 
nomDeTable.create title: "le titre que tu veux"
Book.all pour vérifier...
```

Afficher nos lignes du tableau sur la page
```RUBY
rails generate controller nomDeTable(sans majuscule) NomDeMethode

      create  app/controllers/books_controller.rb
      route  get 'books/index'
      invoke  erb
      create    app/views/books
      create    app/views/books/index.html.erb
      invoke  test_unit
      create    test/controllers/books_controller_test.rb
      invoke  helper
      create    app/helpers/books_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/books.coffee
      invoke    scss
      create      app/assets/stylesheets/books.scss
```
![](https://i.imgur.com/g2R18VA.jpg)

***
Créer un formulaire en ruby = (il se créer dans la view désiré)
```RUBY
<%= form_tag "/books", method: "post" do %>
  <input type="text" name="title" />
  <input type="submit" value="Ajouter le livre" />
<% end %>
```

Créer une route dédié aux informations entrés par l'utilisateur (POST) = post 'books' => 'books#create'
```RUBY
#Pourquoi books#**create** ? (c'est le nom de la method que nous rajoutons dans le controller)

def create
    Book.create title: params[:title]    #insert une nouvelle ligne dans la bdd avec pour titre ...      
    redirect_to "/books"                 #redirige vers la page index
end
```

_params est une variable de type Hash dont les clés coïncident avec les attributs name du formulaire, et les valeurs sont les saisies de l'utilisateur. Par exemple: params[:title]_
***

## Modification des données

route d'un lien en fonction d'un paramètre (ex: id)= 
```RUBY
get 'books/:id' => 'books#show'
Le « :id » permet de stocker la fin de la route dans params[:id].
```
dans le controller, ça donne = 
```RUBY
def show
  @book = Book.find(params[:id])
end
```
dans la nouvelle vue, ça donne = 
```RUBY
# app/views/books/show.html.erb
<h1><%= @book.title %></h1>
<p><a href="/books">Retourner à l’index</a></p>
```
Pour attribuer a un lien le paramètre d'un élément, ça donne = 
```RUBY
# app/views/books/index.html.erb
<h1>Liste des livres</h1>
<% @books.each do |book| %>
  <p><a href="/books/<%= book.id %>"><%= book.title %></a></p>
<% end %>
```
Un formulaire de modification = 
```RUBY
<%= form_tag "/books/#{@book.id}", method: "patch" do %>
  <input type="text" name="title" value="<%= @book.title %>" />
  <input type="submit" value="Modifier le livre" />
<% end %>
```
* _Notez le #{@book.id}, qui permet d’inclure une variable à l’intérieur d’une chaîne de caractères ;_
* _la method est patch, utilisée pour modifier des données, alors que post est utilisé pour la création de données ;_

pour la route, ça donne = patch 'books/:id' => 'books#update'

La fonction permettant de mettre à jour la bdd = 
```ruby
def update
    @le_livre = Book.find(params[:id])
    @le_livre.title = params[:title]
    @le_livre.save
    redirect_to "/books/#{params[:id]}"
  end
```
**version longue OU version courte**
```ruby
def update
  Book.find(params[:id]).update title: params[:title]
  redirect_to "/books/#{params[:id]}"
  #OU si c'est le root
  redirect_to root_path
end
```

***
## Supprimez des données

la route = delete 'books/:id' => 'books#destroy'

fonction du controller = 
```RUBY
#version courte - recommandé
def destroy
  Book.find(params[:id]).destroy
  redirect_to "/books"
end
```

ajouter un bouton supprimer sur la view = 
```ruby
<%= form_tag "/books/#{@book.id}", method: "delete" do %>
  <input type="submit" value="Supprimer le livre" />
<% end %>
```
_la method delete, qui coïncide avec la route._

* Au même titre que nous avons les fonctions create et update, nous ajoutons destroy ;
* Nous faisons un destroy sur notre Book pour le supprimer ;
* Nous redirigeons l’utilisateur vers la liste de livres après la suppression. Pas sur le livre en question, puisqu’il n’existe plus !
* Les liens <a> sont forcément en get. Tout le reste doit passer par un formulaire !

***

## Association des modèles
On crée une nouvelle table _TableCategories_
```ruby
$ rails generate migration TableCategories
```
Dans le fichier db/migrate/*_table_categories.rb (* = date et heure de création du fichier) on va crée la table categories et ajouter une colonne _name_
```ruby
class TableCategories < ActiveRecord::Migration
  def change
    create_table :categories
    add_column :categories, :name, :string
  end
end
```
Ensuite on crée manuelement le modèle app/models/category.rb
```ruby
class Category < ActiveRecord::Base
end
```
On oublie pas le migrate
```ruby
$ rake db:migrate
```

On peut ensuite créer des catégories dans le super irb (rails c)
```ruby
Category.create name: "France"
Category.create name: "Monde"
```

Maintenant nous allons devoir lier des livres à une catégorie
Pour cela il faut créer une nouvelle colonne dans la table livre et y stocker l'identifiant de la catégorie
```ruby
$ rails generate migration AddCategoryIdToBooks
```
Dans le fichier db/migrate/*_add_category_id_to_books.rb on voit arriver un nouveau mot clé (add_index)
```ruby
class AddCategoryIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :category_id, :integer
    add_index :books, :category_id
  end
end
```
Ne pas oublier
```ruby
$ rake db:migrate
```
Par convention un attribut permettant de se lier à une autre table porte le nom de cette table au singulier suivi de "_id" (Clé étrangère) car sa valeur est l'identifiant d'une autre table

Il faut ensuite dire que le fichier app/models/book.rb "appartient à" (*belongs_to*) une catégorie 
```ruby
class Book < ActiveRecord::Base
  belongs_to :category
end
```
et qu'une catégorie "possède plusieurs" livres (*has_many*) app/models/category.rb
```ruby
class Category < ActiveRecord::Base
  has_many :books
end
```
Dans rails console (rails c)
```ruby
book = Book.last   # Book.last récupère le dernier livre crée
book.category      # récupère la categorie d'un livre

category = Category.find(1)
category.books     # récupère la liste des livres d'une catégorie
```

En version courte cela donne 
```ruby
Book.last.category
Category.find(1).books
```

## Pour ajouter la possibilité de choisir la catégorie d'un livre lors de son ajout 
Nous devons modifier le formulaire d'ajout de livre app/views/books/index.html.erb
```ruby
<%= form_tag '/books', method: 'post' do %>
  <input type="text" name="title" />
  <input type="text" name="category_id" /> # Ajout de cet input
  <input type="submit" value="Ajouter le livre" />
<% end %>
```
Nous devons également modifier le controller dédié aux livres
```ruby
def create
  Book.create title: params[:title], category_id: params[:category_id]
  redirect_to "/books"
end
```
Nous avons juste ajouter un champ (category_id) dans le formulaire et faire en sorte qu'il soit pris en compte dans la fonction de création du controller

Nous ajoutons la "liste" de toutes les categories dans la method index du controller livre
```ruby
def index
  @books = Book.all
  @categories = Category.all
end
```
Ajout d'un menu déroulant de choix app/views/books/index.html.erb
```ruby
<%= form_tag '/books', method: 'post' do %>
  <input type="text" name="title" />
# Ajout d'une balise select -> option affichant le nom de la catégorie et prennant en value son "id"
  <select name="category_id">
    <% @categories.each do |category| %>
      <option value="<%= category.id %>"><%= category.name %></option>
    <% end %>
  </select>
  <input type="submit" value="Ajouter le livre" />
<% end %>
```
Afficher la catégorie de chaque livre app/views/books/index.html.erb
```ruby
<h1>Liste des livres</h1>
<% @books.each do |book| %>
  <p>
    <a href="/books/<%= book.id %>">
      <% if book.category %>
        <%= book.title %> (<%= book.category.name %>)
      <% else %>
        <%= book.title %>
      <% end %>
    </a>
  </p>
<% end %>
```
Si aucune catégorie n'a été renseignée lors de la création d'un livre nous obtiendrions une erreur, c'est pourquoi la conditions "if" est présente

***

## Les validations de formulaire

Par exemple pour vérifier qu'un titre de livre n'est pas vide lors de sa création, on va mettre à jour le modèle app/models/book.rb
```ruby
class Book < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: {
    message: "Le titre doit être renseigné."
  }

  validates :title, uniqueness: {
    message: "Ce titre est déjà pris."
  }
end
```
Ces lignes garantissent (validates) que les futurs livres créés auront un titre (presence:) et qu’il sera unique (uniqueness:).
```ruby
# On essaye de générer une erreur avec un titre vide
book = Book.create title: ""
```
Il est possible de consulter les erreurs dans rails console
```ruby
book.errors.to_hash
# => {:title=>["Le titre doit être renseigné."]}

# Commandes synonymes :
book.errors[:title][0]
# ou
book.error[:title].first
```
S'il n'y a pas d'erreur, le résultat sera *nil*

## Les scopes

Quelques commandes utilisants des scopes:
```RUBY
Table.first #ressort le premier élément du tableau
Table.last #ressort le dernier élément du tableau
Table.where(foreign_key: id) #ressort les éléments du tableau possédant cette foreign_key
```

Pour créer son propre scopes: 
* direction le model du tableau
```RUBY
scope :french, -> {where(foreign_key: id)}
```
* testons dans la console
```RUBY
Book.where(foreign_key: id)    #Avant
Book.french                    #Après
```

## Les helpers

Les helpers permettent de partager du code ruby entre les différentes view.

dans la view désiré, appeler la function du fichier helpers:
```RUBY
<%= nom_function params %>
#exemple:
<%= book_link book %>
```
puis, dans le fichier helpers, rédiger le code: ne pas oublier le param à droite du nom de la function !!
```RUBY
#une façon de faire:
def book_link book
        "<a href='/book/#{book.id}'>".html_safe + "#{book.title} (#{book.category.name})" + "</a>".html_safe
end

#une autre plus lisible:
def book_link book
        html = "<a href='/book/#{book.id}'>".html_safe
        html += "#{book.title} (#{book.category.name})"
        html += "</a>".html_safe
        html
end
```
## La pagination

**_lien utile:_** https://github.com/kaminari/kaminari

## Messages flash

La variable spécial flash est un hash (comme params), son contenu est disponible le temps d'une redirection:
```RUBY
# app/controllers/books_controller.rb
def update
  @book = Book.find(params[:id])
  if @book.update title: params[:title]
    flash[:success] = "Le livre a été mis à jour."
    redirect_to "/books/#{params[:id]}"
  else
    render 'show'
  end
end

# app/views/layout/application.html.erb
<div><%= flash[:success] %></div>
<%= yield %>
```

## Réutiliser vos vues

* Créer un fichier précédé d'un underscore: _form.html.erb (stocker votre code dedans, exemple des formulaires)
* Les nouvelles routes offrent de nouveaux helpers:  
```RUBY
resources :books, only: [:index, :create, :show, :update, :destroy]
```
* form_for. C’est un form_tag  alternatif : à partir de @book, il déduit tout seul la route et la method à utiliser.
 
_Ici, /books/:id  et patch. Si @book avait pour valeur Book.new, la route serait /books et la method serait post._

```RUBY
# app/views/books/_form.html.erb
<%= form_for @book do %>
  <input type="text" name="title" value="<%= @book.title %>" />
  <p><%= @book.errors[:title].first %></p>
  <input type="submit" value="Modifier le livre" />
<% end %>

# app/views/books/show.html.erb
<h1><%= @book.title %></h1>
<%= render "books/form" %>
<%= form_tag "/books/#{@book.id}", method: "delete" do %>
  <input type="submit" value="Supprimer le livre" />
<% end %>
<p><a href="/books">Retourner à l’index</a></p>
```
Ne pas oublier de modifier le controller pour que le form_for puisse être exploité
```RUBY
# app/controllers/books_controller.rb
def index
  @books = Book.all
  @book = Book.new # afin d'exploiter le helper form_for
end
```
La fonction : persisted?, avec son point d’interrogation, vaut true si le _livre_ est déjà en base de donnée et false sinon. C’est un bon moyen de savoir si nous sommes en train de créer ou modifier.
```RUBY
# app/views/books/_form.html.erb
<%= form_for @book do %>
  <input type="text" name="title" value="<%= @book.title %>" />
  <p><%= @book.errors[:title].first %></p>
  <% if @book.persisted? %>
    <input type="submit" value="Modifier le livre" />
  <% else %>
    <input type="submit" value="Ajouter le livre" />
  <% end %>
<% end %>
```

## Ajouter une image

* Pour afficher une image dans une vue, utilisez le helper image_tag :
```RUBY
<%= image_tag "votre_image.png", alt: "Mon image", width: 64, height: 64 %>
```
* Pour faire la même chose en CSS, assurez-vous déjà que l’extension de vos fichiers est SCSS et non CSS. Cela offre de nouvelles fonctionnalités, comme l’usage du helper asset-path :
```RUBY
body {
  background-image: url(asset-path("votre_image.png"));
}
```
## Connexion des utilisateurs
* Il faut une table pour vos utilisateurs:
* Dans le controller:
```RUBY
def check
    @current_user = User.where(name: params[:name], password: params[:password]).first
    if @current_user
      flash[:info] = "Bienvenue #{@current_user.name} !"
      redirect_to "/users/home"
    else
      flash[:info] = "Échec de la connexion"
      redirect_to "/users/login"
    end
  end
```
* Pour sécuriser les mots de passe, voir la gem bcrypt: 
1. https://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html

## Sessions 
1. cf. https://gist.github.com/Bahanix/275fd0dbcf8b1483284d4dbe0c72d64d

* La variables session peut contenir les données qui vont persister d’une page à l’autre.
* Dans le controller:
```RUBY
# app/controllers/users_controller.rb
class UsersController < ApplicationController

                                  #Ici, on stock toutes les infos de l'user

def home                                                           
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

  def login
  end

  def logout
    session[:user_id] = nil
    flash[:info] = "Vous êtes maintenant déconnecté."
    redirect_to "/users/home"
  end
                                 #Ici, on vérifie que l'user existe dans la bdd

  def check
    @current_user = User.where(name: params[:name], password: params[:password]).first
    if @current_user
      session[:user_id] = @current_user.id
      flash[:info] = "Vous êtes maintenant connecté"
      redirect_to "/users/home"
    else
      session[:user_id] = nil
      flash[:info] = "Échec de la connexion"
      redirect_to "/users/login"
    end
end
end
```

Dans la view:
```RUBY
# app/views/users/home.html.erb
<% if @current_user %>
  <h1>Bienvenue <%= @current_user.name %> !</h1>
  <%= form_tag "/users/login", method: :delete do %>
    <input type="submit" value="Déconnexion" />
  <% end %>
<% else %>
  <h1>Bienvenue visiteur anonyme !</h1>
  <a href="/users/login">S'identifier</a>
<% end %>
```

Dans les routes:
```RUBY
get 'users/login' => 'users#login'
delete 'users/login' => 'users#logout'
```
## Droits utilisateurs

* Pour vérifier le role d'un utilisateur dans une view:  
```RUBY
# app/views/users/home.html.erb
<% if @current_user %>
  <% if @current_user.role == "admin" %>
    <h1>Bienvenue administrateur <%= @current_user.name %> !</h1>
  <% else %>
    <h1>Bienvenue <%= @current_user.name %> !</h1>
  <% end %>
<% else %>
  <h1>Bienvenue visiteur anonyme !</h1>
  <a href="/users/login">S'identifier</a>
<% end %>
```
Pour interdire l’accès à une fonction du contrôleur:
```RUBY
#version détaillé
if !@current_user || @current_user.role != "admin"
  return head :forbidden
end

#En français, celle ligne se lirait:
    #« Si (if) l’utilisateur n'est pas connecté (!@current_user)
    #ou (||) si son rôle n’est pas administrateur (role != "admin")
    #Interrompt l'exécution de la page (return)
    #en envoyant au navigateur le code d’erreur d’interdiction (head :forbidden) ».

#version courte
if @current_user.try(:role) != "admin"
  return head :forbidden
end
#La fonction derrière le try n’est appelée que si le @current_user n’est pas nil.
```
* Afficher l'erreur et rediriger l'utilisateur:
```RUBY
def logout
    if !@current_user || @current_user.role != "admin"
      flash[:error] = "Accès interdit"
      return redirect_to request.referrer || root_path
    else
      session[:user_id] = nil
      flash[:info] = "Vous êtes maintenant déconnecté."
      redirect_to "/users/home"
    end
end
```
* Aérez votre code grâce aux modèles:
```RUBY
#model/user
def admin?
   self.role == "admin"
end

#controller/users
def logout
    if !@current_user || @current_user.admin?
      flash[:error] = "Accès interdit"
      return redirect_to request.referrer || root_path
    else
      session[:user_id] = nil
      flash[:info] = "Vous êtes maintenant déconnecté."
      redirect_to "/users/home"
    end
end
```


## Scaffolding

* Générer votre table ainsi que ses fichiers (model, view, controller):
```RUBY
rails g scaffold author name:string birthdate:date
rake db:migrate
```

* le redirect_to @author, qui déduit tout seul la route /authors/#{@author.id}. 
* les notices : c’est un moyen de remplir automatiquement la variableflash[:notice] ;
* le status: :created, qui envoie un code de réussite au navigateur.
```RUBY
#authors/controllers/authors_controllers.rb, dans la définition de create
format.html { redirect_to @author, notice: 'Author ... created.' }
format.json { render :show, status: :created, location: @author }
```

* Générer des Foreign_key:
1- Notez le motreferences, curieusement au pluriel – mais c’est comme ça. Rails comprendra que vous voulez un attribut author_id en faisant cela.
```RUBY
rails g scaffold book title:string content:text author:references
```

_Si vous n'avez pas besoin du contrôleur et des vues, mais seulement du modèle et de la migration, vous pouvez utiliser la commande rails g model au lieu derails g scaffold. N'oubliez pas votre rake db:migrate ensuite, dans un cas comme dans l'autre !_

## <select><option>

https://apidock.com/rails/ActionView/Helpers/FormOptionsHelper/options_from_collection_for_select
https://stackoverflow.com/questions/40467035/rails-select-tag-undefined-method-map-for-nilnilclass



