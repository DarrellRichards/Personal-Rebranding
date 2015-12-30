class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :information
      t.string :url

      t.timestamps null: false
    end
  end
end
