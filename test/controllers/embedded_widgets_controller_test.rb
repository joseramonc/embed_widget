require 'test_helper'

class EmbeddedWidgetsControllerTest < ActionDispatch::IntegrationTest
  test "should get embed" do
    get embed_widget_url(widgets(:one), widgets(:one).url, format: :js)
    assert_response :success
  end
end
