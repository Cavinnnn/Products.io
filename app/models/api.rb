require 'HTTParty'
class Api
    include HTTParty

    base_uri "https://api.exchangeratesapi.io/latest"

    def call
        self.class.get('/latest')
    end
end

api_call = Api.new
puts Api.call