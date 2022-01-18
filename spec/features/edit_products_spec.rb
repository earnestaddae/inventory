require "rails_helper"

RSpec.feature "Editing products" do 
  before do 
    product = FactoryBot.create(:product, name: "Widget name", description: "Widget description", price: 8.99)

    visit root_path 

    click_link product.name
    click_link "Edit Product"
  end

  scenario "is valid with attributes" do 
    fill_in "Name", with: "W name"
    fill_in "Description", with: "Widget name description"
    fill_in "Price", with: 10.99

    click_button "Update Product"

    expect(page).to have_content "Product updated successfully"
    expect(page).to have_content "W name"
  end

  scenario "is invalid without attributes" do
    fill_in "Name", with: ""
    fill_in "Description", with: ""
    fill_in "Price", with: ""

    click_button "Update Product"

    expect(page).to have_content "Product was not updated successfully"
  end
end