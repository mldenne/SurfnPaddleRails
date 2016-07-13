require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save author without a name" do
    author = Author.new
    assert_not author.save, "Saved author without a name"
  end

end
