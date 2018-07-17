class CreateTagTaggableMappings < ActiveRecord::Migration[5.1]
  def change
    create_table :tag_taggable_mappings do |t|
      t.references :taggable, polymorphic: true, index: true
      t.references :tag, index: true
      
      t.timestamps
    end
  end
end
