class Post < ApplicationRecord
  validates :title, :publisher, :author, :issu, :page, :hit, :read, presence: true
  has_one_attached :image
  validate :image_presence
  belongs_to :user,optional:true
  has_many :maxims

  def self.search(search)
    return Post.all unless search
    Post.where('title LIKE(?)', "%#{search}%")
  end

  def image_presence
    unless image.attached?
      errors.add(:image, "を添付してください")
    end
  end

end
