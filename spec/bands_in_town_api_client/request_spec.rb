require File.dirname(__FILE__) + '/../spec_helper.rb'

class BandsInTownApiClient::Request
	attr_reader :url
end

describe BandsInTownApiClient::Request do
	describe "Url generation" do
		it "Should raise an error if the action is invalid" do
			expect { BandsInTownApiClient::Request.new(:asdfasdf, "Skrillex", "SomeClient") }.to raise_error
		end

		it "Should generate a proper url based on attributes" do
			request = BandsInTownApiClient::Request.new(:events, "Skrillex", "SomeClient")
			expect( request.url ).to eq("http://api.bandsintown.com/artists/Skrillex/events.json?api_version=2.0&app_id=SomeClient")
		end

		it "Should provide a response body" do
			request = BandsInTownApiClient::Request.new(:events, "Skrillex", "SomeClient")
			r = request.response
			expect( r.class ).to eq(Array)
			event = r.first
			expect( event.class ).to eq(Hash)
			expect( event.keys.include?("ticket_url") ).to eq(true)
		end
	end
end

