require 'spec_helper.rb'

describe BandsInTownApiClient::Client do
	describe "Request wrapper" do
		it "Should get events" do
			should_array = BandsInTownApiClient::Client.new("Skrillex", "SomeClient").events.class
			expect(should_array).to eq(Array)
		end
	end
end

