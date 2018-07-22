class Album < ApplicationRecord
  belongs_to :creator, class_name: 'User'

  has_many :posts, dependent: :destroy
  has_many :images, as: :imageable, dependent: :destroy∫
end
