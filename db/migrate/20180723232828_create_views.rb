class CreateViews < ActiveRecord::Migration[5.1]
  def change
    create_table :views do |t|
      t.references :viewable, polymorphic: true, index: true
      t.string     :ip_address, index: true

      t.timestamps
    end
  end
end
