require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    user_valid = User.new(email: 'teste@teste.com', password: '123456', password_confirmation: '123456')
    assert user_valid.valid?
  end
end
