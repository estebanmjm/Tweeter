class AgregarEmailToEstudiantes < ActiveRecord::Migration
  def change
  	add_column :estudiantes, :email, :string
  	add_column :estudiantes, :documento, :string
  end
end
