# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
navst = Role.create(:name => 'návštěvník')
admin = Role.create(:name => 'administrátor')

User.create(:firstName =>'Marek', :lastName => 'Novák', :login => 'vlk', :password => 'smradozadek', :email => 'anoha@seznam.cz', :info => 'Takovej blbec no... nic moc jako, spis ho tak trpime...', :role_id => admin.id)
User.create(:firstName =>'Petr', :lastName => 'Smejkal', :login => 'petr', :password => 'vonavozadek', :email => 'xmejkal@gmail.com', :info => 'Je to kus dobryho kluk. Fakt se vyzna. A to ve vsem!!!', :role_id => navst.id)

News.create(:header => 'Spuštění stránek', :body => 'Byla vytvořena první verze stránek kabaretního souboru Vlkabaret. Toto je první novinka.', :valid_from => ('January 16, 2010'))
News.create(:header => 'Testovací novinka 1', :body => 'Tato novinka by se mela zobrazovat od 16.1.2010 do 17.1.2010', :valid_from => ('January 16, 2010'), :valid_until => ('January 17,2010'))
News.create(:header => 'Testovací novinka 2', :body => 'Tato novinka by se mela zobrazovat od 17.1.2010', :valid_from => ('January 17, 2010'))
News.create(:body => 'Tato novinka nema nadpis', :valid_from => ('January 16, 2010'))
News.create(:body => 'Tato novinka ma prazdny nadpis', :valid_from => ('January 16, 2010'))