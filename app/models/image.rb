class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true, optional: true

  attr_accessor :image_path

  before_create do
    p self.inspect
    unless self.image_path
      errors.add :base, 'image path not present'
    end

    image_converted_string = Base64.encode64(open(self.image_path).read).gsub("\n", '')

    self.image = image_converted_string
  end
end
