class Tag < ApplicationRecord
  has_many :tag_taggable_mappings, dependent: :destroy
end
