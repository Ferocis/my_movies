OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '242532899281163', '5d4e41f4bc4fd1d0d6d2bab1db69889e'
end
