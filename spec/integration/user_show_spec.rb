require 'rails_helper'

RSpec.describe 'users#show', type: :feature do
  before(:each) do
    @user1 = User.create(
      name: 'John',
      photo: 'john.jpg',
      bio: 'Web Developer',
      posts_counter: 0
    )

    @user2 = User.create(
      name: 'James',
      photo: 'james.jpg',
      bio: 'Web Developer',
      posts_counter: 0
    )

    @posts = [
      Post.create(author: @user1, title: 'User 1 Post 1', text: 'This is User 1 Post 1',
                  commentsCounter: 0, likesCounter: 0),
      Post.create(author: @user1, title: 'User 1 Post 2', text: 'This is User 1 Post 2',
                  commentsCounter: 0, likesCounter: 0),
      Post.create(author: @user1, title: 'User 1 Post 3', text: 'This is User 1 Post 3',
                  commentsCounter: 0, likesCounter: 0), 
      Post.create(author: @user2, title: 'User 2 Post 1', text: 'This is User 2 Post 1',
                  commentsCounter: 0, likesCounter: 0),
      Post.create(author: @user2, title: 'User 2 Post 2', text: 'This is User 2 Post 2',
                  commentsCounter: 0, likesCounter: 0),
      Post.create(author: @user2, title: 'User 2 Post 3', text: 'This is User 2 Post 3',
                  commentsCounter: 0, likesCounter: 0)
    ]

    visit users_url
  end
end