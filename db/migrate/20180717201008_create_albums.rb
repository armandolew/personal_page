class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.references :creator, references: :users, index: true
      t.string     :title
      t.text       :description
      t.boolean    :active, default: true
      t.boolean    :feature, default: false

      t.timestamps
    end
  end
end
