require "rails_helper"

RSpec.feature "Deleting products" do 
  scenario "is successful" do 
    product = FactoryBot.create(:product, name: "Widget name", description: "Widget description", price: 8.99)

    visit root_path

    click_link product.name
    click_button "Delete Product"

    expect(page).to have_content "Product has been deleted successfully"
    expect(page.current_url).to eq products_url 
    expect(page).to have_no_content "Widget name"
  end
end