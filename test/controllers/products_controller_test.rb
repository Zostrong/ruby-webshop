require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_redirected_to new_user_session_path
  end

  test "not authenticated should not create product" do
    assert_no_changes('Product.count') do
      post products_url, params: { product: { brand: @product.brand, description: @product.description, model: @product.model, price: @product.price } }
    end
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "not authenticated should not get edit" do
    get edit_product_url(@product)
    assert_redirected_to new_user_session_path
  end

  test "not authenticated should not update product" do
    patch product_url(@product), params: { product: { brand: @product.brand, description: @product.description, model: @product.model, price: @product.price } }
    assert_redirected_to new_user_session_path
  end

  test "not autheticated should not destroy product" do
    assert_no_changes('Product.count', 0) do
      delete product_url(@product)
    end
  end
end
