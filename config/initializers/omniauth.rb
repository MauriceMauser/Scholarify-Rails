OmniAuth.config.logger = Rails.logger
OmniAuth.config.full_host = "http://scholarify.herokuapp.com"

Rails.application.config.middleware.use OmniAuth::Builder do 
	#  provider :developer unless Rails.env.production?
	provider :twitter, "hXvbkQKcoQflrt1Q0ksEg", "WGNwjprau7RgY2Lt6JXkBtpFgfgaUEBMrIbNLn6oo"
	provider :facebook, "390169657710370", "737d5c68161956ac9e37af4aa1a3b308", :display => "popup"
end



# API keys

# LinkedIn API Key:              fsht9r235fn9
# LinkedIn Secret:               EPT0wp7wZqlabFsa
        
# Twitter Consumer Key:      hXvbkQKcoQflrt1Q0ksEg
# Twitter Secret:   WGNwjprau7RgY2Lt6JXkBtpFgfgaUEBMrIbNLn6oo
      
# Facebook App ID:              390169657710370
# FB Secret:               737d5c68161956ac9e37af4aa1a3b308
