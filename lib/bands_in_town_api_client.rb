require "bands_in_town_api_client/version"
require "open-uri"
require "json"
require "bands_in_town_api_client/request"

module BandsInTownApiClient
	class Client
		def initialize( artist_id, client_id )
			@artist_id = artist_id
			@client_id = client_id
		end

		def events(format=:json)
			request = Request.new( :events, @artist_id, @client_id, format)
			request.response
		end
	end
end
