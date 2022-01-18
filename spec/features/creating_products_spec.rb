require "rails_helper"

RSpec.feature "Creating products" do
  before do
    visit root_path

    click_link "Add Product"
  end

  scenario "is valid with attributes" do

    fill_in "Name", with: "Widget name"
    fill_in "Description", with: "Awesome widget description"
    fill_in "Price", with: 9.9

    click_button "Create Product"

    expect(page).to have_content "Product has been created successfully."
  end

  scenario "is invalid without attributes" do
    click_button "Create Product"
    expect(page).to have_content "Product has not been created successfully."
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Price can't be blank"
    expect(page).to have_content "Description can't be blank"
  end

  context "with attachment" do 
    scenario "accepts image upload" do 
      fill_in "Name", with: "Image upload"
      fill_in "Description", with: "Image uploading description"
      fill_in "Price", with: 9.99
      attach_file "Image", "spec/support/fixtures/attached_image.jpg"

      click_button "Create Product"

      expect(page).to have_content "Product has been created successfully."
      
      expect(page).to have_content "attached_image.jpg"
    end

    scenario "an image is invalid without the right content type" do 
      fill_in "Name", with: "Image upload"
      fill_in "Description", with: "Image uploading description"
      fill_in "Price", with: 9.99
      attach_file "Image", "spec/support/fixtures/invalid_content_type.txt"

      click_button "Create Product"

      expect(page).to have_content "Product has not been created successfully."
      expect(page).to have_content "Image has an invalid content type"
    end
  end
end
