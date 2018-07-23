class User < ApplicationRecord
  has_many :albums, class_name: 'Album', foreign_key: 'creator_id', dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :posts, class_name: 'Post', foreign_key: 'author_id', dependent: :destroy

  validates :name, {
    length: { in: 2..255 }
  }

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }
end
