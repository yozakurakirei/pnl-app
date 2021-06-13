class Post < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  has_one_attached :image
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 50}
  validates :area, presence: true, length: { maximum: 50}
  validates :name, presence: true, length: { maximum: 50}
  validates :image, content_type: { in: %w[image/jpeg image/gif image/png],
                                    message: "投稿できるのは .jpeg .gif .pngになります。"},
                            size: { less_than: 5.megabytes,
                                    message: "投稿できるのは、5MBまでになります。"}

  def display_image
    image.variant(resize_to_limit: [500,500])
  end
end
