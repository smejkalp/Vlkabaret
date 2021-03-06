set :application, "vlkabaret"
set :repository, "git@github.com:smejkalp/Vlkabaret.git"
set :scm, "git"

role :web, "server3.railshosting.cz"
role :app, "server3.railshosting.cz"
role :db,  "server3.railshosting.cz", :primary => true

set :deploy_to, "/home/vlkabaret/app/"
set :user, "vlkabaret"

set :use_sudo, false

task :after_update_code, :roles => [:app, :db] do
  run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
end


namespace :deploy do
  task :start, :roles => :app do
  end
end

namespace :deploy do
  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
end

desc "seeds initial data"
task :seed, :roles => :app do
  run "cd #{current_path} && rake RAILS_ENV=production db:seed"
end


desc "remotely console" 
task :console, :roles => :app do
  input = ''
  run "cd #{current_path} && ./script/console RAILS_ENV=production" do |channel, stream, data|
    next if data.chomp == input.chomp || data.chomp == ''
    print data
    channel.send_data(input = $stdin.gets) if data =~ /^(>|\?)>/
  end
end
