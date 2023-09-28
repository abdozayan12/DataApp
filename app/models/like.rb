class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  after_save :update_likes_counter

  private

  def update_likes_counter
    update(like_counter: likes.count)
  end
end
