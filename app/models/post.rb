class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :album

  has_many :tags, through: :tag_taggable_mappings
  has_many :tag_taggable_mappings, dependent: :destroy

  validates :title, {
    length: {
      in: 2..255
    }
  }
end
