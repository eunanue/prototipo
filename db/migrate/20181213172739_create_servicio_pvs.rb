class CreateServicioPvs < ActiveRecord::Migration[5.2]
  def change
    create_table :servicio_pvs do |t|
      t.integer :idpvs
      t.string :nombre

      t.timestamps
    end
  end
end
