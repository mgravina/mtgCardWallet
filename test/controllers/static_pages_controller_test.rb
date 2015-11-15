require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
	assert_select "title", "Home | mtgCardWallet.com"
  end

  test "should get mycollection" do
    get :mycollection
    assert_response :success
	assert_select "title", "My Collection | mtgCardWallet.com"
  end
  
    test "should get about" do
    get :about
    assert_response :success
	assert_select "title", "About | mtgCardWallet.com"
  end
    
  test "should get contact" do
    get :contact
    assert_response :success
	assert_select "title", "Contact | mtgCardWallet.com"
  end


end
