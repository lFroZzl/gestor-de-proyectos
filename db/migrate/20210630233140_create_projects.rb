class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.date :starts_on
      t.date :ends_on
      t.string :state

      t.timestamps
    end
  end
end
