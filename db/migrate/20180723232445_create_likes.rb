class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.references :likeable, polymorphic: true, index: true
      t.references :user, index: true
      t.boolean    :like, default: true

      t.timestamps
    end
  end
end
