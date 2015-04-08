Sidekiq.configure_server do |config|
  config.redis = { url: ENV['REDISCLOUD_URL'], size: 7 }
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV['REDISCLOUD_URL'], size: 1 }
end