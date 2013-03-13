class AddSubscribersToUsers < ActiveRecord::Migration
  def change
     add_column :subscribers, :subscriber_id, :integer
    end
end
