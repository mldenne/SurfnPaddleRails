require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save a post without a title" do
    post = Post.new(:body => "this is a test")
    assert_not post.save, "Saved the post without a title"
  end

end
