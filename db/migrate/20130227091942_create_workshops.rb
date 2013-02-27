class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :name
      t.string :nav_setting
      t.text :description

      t.timestamps
    end
  end
end
