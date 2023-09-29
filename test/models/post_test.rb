require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'should be valid with valid attributes' do
    user = User.create(name: 'John')
    post = Post.new(author: user, title: 'Hello', comment_counter: 0, like_counter: 0)
    assert post.valid?
  end

  test 'should not be valid without a title' do
    user = User.create(name: 'Alice')
    post = Post.new(author: user, comment_counter: 0, like_counter: 0)
    assert_not post.valid?
  end

  test 'title should not exceed 250 characters' do
    user = User.create(name: 'Bob')
    post = Post.new(author: user, title: 'A' * 251, comment_counter: 0, like_counter: 0)
    assert_not post.valid?
  end

  test 'comment_counter should be an integer greater than or equal to zero' do
    user = User.create(name: 'Eve')
    post = Post.new(author: user, title: 'Example', comment_counter: -1, like_counter: 0)
    assert_not post.valid?
  end

  test 'like_counter should be an integer greater than or equal to zero' do
    user = User.create(name: 'Frank')
    post = Post.new(author: user, title: 'Test', comment_counter: 0, like_counter: -1)
    assert_not post.valid?
  end
end
