class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :projectname
      t.string :projectlocation

      t.timestamps
    end
  end
end
