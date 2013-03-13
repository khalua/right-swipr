class DropSubscribersIdfromSubscriber < ActiveRecord::Migration
  def change
    remove_column :subscribers, :subscriber_id
  end
end
