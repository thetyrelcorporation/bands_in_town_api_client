require 'spec_helper.rb'

describe BandsInTownApiClient::Client do
	describe "Request wrapper" do
		it "Should get events" do
			should_array = BandsInTownApiClient::Client.new("Skrillex", "SomeClient").events.class
			expect(should_array).to eq(Array)
		end
		it "Should work with xml" do
			should_array = BandsInTownApiClient::Client.new("Skrillex", "SomeClient").events(:xml).class
			expect(should_array).to eq(Hash)
		end
	end
end

