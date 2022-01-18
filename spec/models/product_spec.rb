require 'rails_helper'

RSpec.describe Product, type: :model do
  context "#with price" do
    before do 
      @product = FactoryBot.create(:product, name: "Awesome name", description: "Widget description", price: 9.99)
    end
    it "is valid if price is a number" do 
      expect(@product).to be_valid
    end

    it "is invalid if price is not a number" do 
      @product.price = "not a number"

      expect(@product).to_not be_valid
    end

    it "is invalid if price is less than 0.01" do 
      @product.price = 0.00

      expect(@product).to_not be_valid
    end

    it "is valid if price is greater than or equal to 0.01" do
      @product.price = 0.02

      expect(@product).to be_valid
    end
  end
end
