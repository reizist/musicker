Rails.application.config.middleware.use OmniAuth::Builder do
  provider :lastfm, 'f2021dbda43cd3fcf835dfd607c03124', 'd725ed6474f61d59b5797f73489e4709'
end
