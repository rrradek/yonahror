require 'spec_helper'
describe Product do
	it "doesn't create a product without a title" do
		expect {create(:product, title: nil)}.to raise_error
	end

	it "doesn't create a product without a description" do
		expect {create(:product, description: nil)}.to raise_error
	end

end