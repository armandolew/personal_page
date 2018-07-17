class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.references :author, references: :users, index: true
      t.references :album, index: true
      t.string     :title
      t.text       :description
      t.text       :content
      t.boolean    :active, default: true
      t.datetime   :date, default: DateTime.now
      t.string     :slug

      t.timestamps
    end
  end
end
