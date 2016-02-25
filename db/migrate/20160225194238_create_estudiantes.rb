class CreateEstudiantes < ActiveRecord::Migration
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.float :nota
      t.integer :edad

      t.timestamps
    end
  end
end
