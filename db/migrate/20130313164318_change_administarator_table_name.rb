class ChangeAdministaratorTableName < ActiveRecord::Migration
  def change
    rename_table :administrator, :administrators
  end
end
