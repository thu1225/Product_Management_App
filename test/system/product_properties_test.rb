require "application_system_test_case"

class ProductPropertiesTest < ApplicationSystemTestCase
  setup do
    @product_property = product_properties(:one)
  end

  test "visiting the index" do
    visit product_properties_url
    assert_selector "h1", text: "Product Properties"
  end

  test "creating a Product property" do
    visit product_properties_url
    click_on "New Product Property"

    fill_in "Imageproduct url", with: @product_property.imageproduct_url
    fill_in "In stock", with: @product_property.in_stock
    fill_in "Product", with: @product_property.product_id
    fill_in "Version", with: @product_property.version
    click_on "Create Product property"

    assert_text "Product property was successfully created"
    click_on "Back"
  end

  test "updating a Product property" do
    visit product_properties_url
    click_on "Edit", match: :first

    fill_in "Imageproduct url", with: @product_property.imageproduct_url
    fill_in "In stock", with: @product_property.in_stock
    fill_in "Product", with: @product_property.product_id
    fill_in "Version", with: @product_property.version
    click_on "Update Product property"

    assert_text "Product property was successfully updated"
    click_on "Back"
  end

  test "destroying a Product property" do
    visit product_properties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product property was successfully destroyed"
  end
end
