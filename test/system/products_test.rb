require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase

  setup do
    @product = products(:one)
    @user = users(:user_one)
    @product_to_edit = products(:two)

    visit new_user_session_path
    fill_in "Email", with: @user.email
    fill_in "Password", with: 123456
  end

  test "visiting the index" do
    visit product_url(@product)
    assert_selector "h3", text: @product.model
  end

  test "creating a product" do
    visit new_product_path

    fill_in "Model", with: @product.model
    fill_in "Brand", with: @product.brand
    fill_in "Price", with: @product.price
    fill_in "Category", with: @product.category
    fill_in "Description", with: @product.description
    click_on "Feltöltés"

    assert_text "Termék sikeresen létrehozva"
  end

  test "updating a product" do
    visit edit_product_path(@product_to_edit)

    fill_in "Model", with: @product.model
    fill_in "Brand", with: @product.brand
    fill_in "Price", with: @product.price
    fill_in "Category", with: @product.category
    fill_in "Description", with: @product.description
    click_on "Feltöltés"

    assert_text "Termék sikeresen frissítve"
  end

  test "destroying a product" do
    visit product_url(@product)
    page.accept_confirm do
      click_on "Törlés", match: :first
    end

    assert_text "Termék sikeresen törölve"
  end
end
