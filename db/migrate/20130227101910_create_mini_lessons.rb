class CreateMiniLessons < ActiveRecord::Migration
  def change
    create_table :mini_lessons do |t|
      t.string :title
      t.text :description
      t.string :attachment
      t.integer :workshop_id
      t.integer :nav_order

      t.timestamps
    end
  end
end
