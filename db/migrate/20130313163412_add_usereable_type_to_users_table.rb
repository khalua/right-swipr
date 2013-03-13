class AddUsereableTypeToUsersTable < ActiveRecord::Migration
  def change
    add_column :users, :userable_id, :integer #this is because it's shared - see book 2 3/13/13
    add_column :users, :userable_type, :string
  end
end
