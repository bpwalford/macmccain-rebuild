require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Macmccain
  BUCKET = 'macmccain'

  class Application < Rails::Application
    AWS::S3::DEFAULT_HOST = "s3-us-west-2.amazonaws.com"

    AWS::S3::Base.establish_connection!(
        :access_key_id     => ENV["AWS_KEY"],
        :secret_access_key => ENV["AWS_SECRET"]
    )

    config.active_record.raise_in_transactional_callbacks = true
  end
end
