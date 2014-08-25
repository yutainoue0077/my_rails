CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAJUISPZKVVIPDGNPA',
    :aws_secret_access_key  => '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',
    :region                 => 'ap-northeast-1'
  }

  config.fog_directory = 'tsukemen' if Rails.env.production?
  config.fog_directory = 'tsukemen' if Rails.env.development?

end
