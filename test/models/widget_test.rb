require 'test_helper'

class WidgetTest < ActiveSupport::TestCase

  test "generate url" do
    widget = Widget.create name: 'test'
    assert widget.url.present?
  end
end
