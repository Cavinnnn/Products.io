require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'valid user' do
    user = User.new(email: 'example@hotmail.com', admin: false)
    assert user.valid?
  end
end
