Sidekiq.configure_server do |config|
  config.redis = { url: ENV['REDIS_URL'], size: ENV['SIDEKIQ_SERVER_REDIS_SIZE'] }
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV['REDIS_URL'], size: ENV['SIDEKIQ_CLIENT_REDIS_SIZE'] }
end