module BandsInTownApiClient
	class Request
		def initialize( action, artist_id, client_id, format=:json )
			base_url = "http://api.bandsintown.com/"
			@action = action
			@artist_id = artist_id
			get_params = "?api_version=2.0&app_id=#{client_id}"
			@url = "#{base_url}#{action_uri}.#{format}#{get_params}"
		end

		def response
			begin
				r = open(@url)
				JSON::parse(r.read)
			rescue => e
				@error = e
				error_response
			end
		end

		def error_response
			{ error: @error }
		end

		def action_uri
			case @action
				when :events
					"artists/#{@artist_id}/events"
				else
					raise "Unsuported api action"
			end
		end
	end
end
