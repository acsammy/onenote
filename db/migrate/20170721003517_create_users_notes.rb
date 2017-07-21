class CreateUsersNotes < ActiveRecord::Migration
  def change
    create_table :users_notes do |t|
      t.references :user, index: true, foreign_key: true
      t.references :note, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
