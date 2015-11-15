require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "mtgCardWallet.com"
    assert_equal full_title("MyCollection"), "MyCollection | mtgCardWallet.com"
  end
end