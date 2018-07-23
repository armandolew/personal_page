class View < ApplicationRecord
  belongs_to :viewable, polymorphic: true

  validates :viewable_id, {
    uniqueness: {
      scope: [:ip_address]
    }
  }
end
