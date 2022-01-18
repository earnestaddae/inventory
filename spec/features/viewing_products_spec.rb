require "rails_helper"

RSpec.feature "Viewing product" do 
  scenario "details is with a link" do 
    product = FactoryBot.create(:product, name: "Widget name", description: "Widget description", price: 8.99)

    visit root_path 

    within ".products" do 
      click_link product.name
    end
    

    expect(page.current_url).to eq product_url(product)
  end
end