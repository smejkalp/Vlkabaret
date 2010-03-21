# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
navst = Role.create(:name => 'guest')
member = Role.create(:name => 'member')

User.create(:firstName =>'Alžběta', :lastName => 'Kostrhounová', :role_id => member.id, :login => 'alzbeta', :password => 'kostr', :password_confirmation => 'kostr')
User.create(:firstName =>'Jakub', :lastName => 'Otčenášek', :role_id => member.id, :login => "jakub", :password => "otcen", :password_confirmation => "otcen")
User.create(:firstName =>'Antonín', :lastName => 'Policar', :role_id => member.id, :login => "antonin", :password => "polic", :password_confirmation => "polic")
User.create(:firstName =>'Marek', :lastName => 'Novák', :login => 'marek', :password => 'novak', :password_confirmation => "novak", :email => 'anoha@seznam.cz', :info => 'Takovej blbec no... nic moc jako, spis ho tak trpime...', :role_id => member.id)
User.create(:firstName =>'Petr', :lastName => 'Smejkal', :login => 'petr', :password => 'smejk', :password_confirmation => "smejk", :email => 'xmejkal@gmail.com', :info => 'Je to kus dobryho kluk. Fakt se vyzna. A to ve vsem!!!', :role_id => navst.id)

News.create(:header => 'Spuštění stránek', :body => 'Byla vytvořena první verze stránek kabaretního souboru Vlkabaret. Toto je první novinka.', :valid_from => ('January 16, 2010'))
News.create(:header => 'Testovací novinka 1', :body => 'Tato novinka by se mela zobrazovat od 16.1.2010 do 17.1.2010', :valid_from => ('January 16, 2010'), :valid_until => ('January 17,2010'))
#News.create(:header => 'Testovací novinka 2', :body => 'Tato novinka by se mela zobrazovat od 17.1.2010', :valid_from => ('January 17, 2010'))
#News.create(:body => 'Tato novinka nema nadpis', :valid_from => ('January 16, 2010'))
#News.create(:header => '', :body => 'Tato novinka ma prazdny nadpis', :valid_from => ('January 16, 2010'))
roxy = Club.create(:name => 'Roxy', :www => 'www.roxy.cz', :phone => '+420 123 456 789', :address => 'Dlouhá 10, Praha, 110 00', :email => 'info@roxy.cz', :info => 'trochu techno, ale v pohode..')
nahorany = Club.create(:name => 'Nahořany', :www => 'www.nahorany.cz', :phone => '+420 123 456 789', :address => 'Nahořany u Volyně', :email => 'info@nahorany.cz', :info => 'Jihočeská mekka alternativy')


Concert.create(:date => ('January 17 2010'), :start_time => ('8:30 pm'), :end_time => ('10:00pm'), :name => 'Koncert na podporu Petra', :price => '100.00', :info => 'Petr je sakra dobrej kluk, tak by bylo docela spravny pro nej vybrat nejaky ty penize, nemyslite?', :club_id => roxy.id)
Concert.create(:date => ('October 24 2009'), :start_time => ('8:00 pm'), :end_time => ('9:30pm'), :name => 'Vlkabaret v Nahořanech', :price => '50.00', :info => 'Přátelé kabaretů a vlků neváhejte a přijeďte koukat! Případné požadavky na ubytování směřujte na Vlka.', :club_id => nahorany.id)