OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '591047264177-84apcgsfqhbn5g4lu5dd55q4vuf0ouip.apps.googleusercontent.com
', 'fsZW86k_CKbG0Fn_OfqgR9KN', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end