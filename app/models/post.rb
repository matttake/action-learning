class Post < ApplicationRecord
  validates :title, :publisher, :author, :issu, :page, :hit, :read, presence: true
  has_one_attached :image
  belongs_to :user,optional:true
  has_many :maxims

  def self.search(search)
    return Post.all unless search
    Post.where('title LIKE(?)', "%#{search}%")
  end

end
