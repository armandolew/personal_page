class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :author, class_name: 'User'
  belongs_to :album, optional: true

  has_many :tags, through: :tag_taggable_mappings
  has_many :tag_taggable_mappings, dependent: :destroy

  validates :title, {
    length: {
      in: 2..255
    }
  }

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }
end
