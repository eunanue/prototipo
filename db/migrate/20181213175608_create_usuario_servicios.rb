class CreateUsuarioServicios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuario_servicios do |t|
      t.integer :msisdn
      t.integer :servicio

      t.timestamps
    end
  end
end
