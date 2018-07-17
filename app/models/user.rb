class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  
  validates :name, {
    length: { in: 2..255 }
  }
end
