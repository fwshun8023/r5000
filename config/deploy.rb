# config valid only for current version of Capistrano
lock '3.6.0'

set :application, 'r5000'
set :repo_url, 'git@github.com:fwshun8023/r5000.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/home/fw/r5000'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
append :linked_files, 'config/database.yml', 'config/secrets.yml'

# Default value for linked_dirs is []
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 2

set :rvm_ruby_version, '2.3.1'

# Defaults to false
# Skip migration if files in db/migrate were not modified
# set :conditionally_migrate, true

# set this to the number of versions to keep
set :keep_assets, 2 

set :nginx_server_name, "fwshun.com www.fwshun.com"

set :nginx_use_ssl, true
