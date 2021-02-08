class CreateRegisters < ActiveRecord::Migration[6.0]
  def change
    create_table :registers do |t|
      t.string :name, null: false
      t.date :date_register
      t.string :cpf
      t.string :rg
      t.date :birth, null: false
      t.integer :type_plan, default: 0
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
