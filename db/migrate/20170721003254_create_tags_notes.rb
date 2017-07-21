class CreateTagsNotes < ActiveRecord::Migration
  def change
    create_table :tags_notes do |t|
      t.references :tag, index: true, foreign_key: true
      t.references :note, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
