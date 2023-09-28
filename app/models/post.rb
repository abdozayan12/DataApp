# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :likes
  has_many :comments

  after_save :update_posts_counter

  private

  def update_posts_counter
    author.increment!(:post_counter)
  end
end
