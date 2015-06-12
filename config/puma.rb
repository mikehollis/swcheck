threads 0,ENV['PUMA_THREADS_MAX']
workers ENV['PUMA_WORKERS_COUNT']
preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 3000
environment ENV['RACK_ENV'] || 'development'

on_worker_boot do
  ActiveRecord::Base.establish_connection
end
