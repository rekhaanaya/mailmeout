OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '220843681404976', 'd1e964a6b3d2bf9c66ca3b16e6363bee'
end
