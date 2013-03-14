class ChangeSubscriberColumnToInteger < ActiveRecord::Migration
  def change
    remove_column :subscribers, :income
    add_column :subscribers, :income, :decimal
  end
end
