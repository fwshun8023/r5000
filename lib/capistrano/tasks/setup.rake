namespace :setup do

  desc "Upload database.yml file."
  task :upload_yml do
    on roles(:web) do
      execute "mkdir -p #{shared_path}/config"
      upload! StringIO.new(File.read("config/database.yml")), "#{shared_path}/config/database.yml"
    end
  end

  desc "Upload secrets.yml file."
  task :upload_secret do
    on roles(:web) do
      execute "mkdir -p #{shared_path}/config"
      upload! StringIO.new(File.read("config/secrets.yml")), "#{shared_path}/config/secrets.yml"
    end
  end

  desc "Upload r5000.crt file."
  task :upload_crt do
    on roles(:web) do
      execute "mkdir -p /home/fw/r5000"
      upload! StringIO.new(File.read("r5000.crt")), "/home/fw/r5000/r5000.crt"
    end
  end

  desc "Seed the database."
  task :seed_db do
    on roles(:web) do
      within "#{current_path}" do
        with rails_env: :production do
          execute :rake, "db:seed"
        end
      end
    end
  end
end

