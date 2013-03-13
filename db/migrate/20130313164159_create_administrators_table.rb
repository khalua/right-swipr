class CreateAdministratorsTable < ActiveRecord::Migration
  def change
    create_table  :administrator do |t|
      t.timestamps
    end
  end
end
