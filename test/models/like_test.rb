# frozen_string_literal: true

require 'test_helper'

class LikeTest < ActiveSupport::TestCase
  test 'should create valid like' do
    user = User.create(name: 'Henry')
    post = Post.create(author: user, title: 'Test')
    like = Like.create(post:, user:)
    assert like.valid?
  end

  test 'should not create like if no user' do
    user = User.create(name: 'Henry')
    post = Post.create(author: user, title: 'Test')
    like = Like.create(post:)
    assert_not like.valid?
  end

  test 'should not create like if no post' do
    user = User.create(name: 'Henry')
    like = Like.create(user:)
    assert_not like.valid?
  end

  test 'should update likes_counter correctly' do
    user = User.create(name: 'Henry')
    post = Post.create(author: user, title: 'Test', comment_counter: 0, like_counter: 0)
    Like.create(post:, user:)
    assert_equal 1, post.like_counter
  end
end
