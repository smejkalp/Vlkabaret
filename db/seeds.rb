# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
User.create(:firstName =>'Marek', :lastName => 'Novák', :login => 'vlk', :password => 'smradozadek', :email => 'anoha@seznam.cz', :info => 'Takovej blbec no... nic moc jako, spis ho tak trpime...')
User.create(:firstName =>'Petr', :lastName => 'Smejkal', :login => 'petr', :password => 'vonavozadek', :email => 'xmejkal@gmail.com', :info => 'Je to kus dobryho kluk. Fakt se vyzna. A to ve vsem!!!')