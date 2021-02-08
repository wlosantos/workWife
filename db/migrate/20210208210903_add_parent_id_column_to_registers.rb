class AddParentIdColumnToRegisters < ActiveRecord::Migration[6.0]
  def change
    add_reference :registers, :parent, foreign_key: { to_table: :registers }
  end
end
