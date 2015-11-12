require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
	assert_select "title", "MtgCardWallet"
  end

  test "should get mycollection" do
    get :mycollection
    assert_response :success
	assert_select "title", "My Collection"
  end
  
    test "should get about" do
    get :about
    assert_response :success
	assert_select "title", "About mtgCardWallet"
  end

end
