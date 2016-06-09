require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  # 1 - Add "minitest-reporters" && setup "test/test_helper.rb"
  # require "minitest/reporters"
  # Minitest::Reporters.use!

  # 2 - Add "guard" gem, track if static_pages_controller_test was changed
  #     -> Just run static_pages_controller_test.rb
  # bundle exec guard init

  # Special function like "before_action :setup"
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get :home
    assert_response :success # success: 200
    assert_select "title", "Home | #{@base_title}" # assert(html, content)
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
end



