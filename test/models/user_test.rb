require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.new(
      name: "Example user", 
      password: "12345678", 
      password_confirmation: "12345678"
    )
  end

  test "should be valid" do
    assert @user.valid?
  end
end
