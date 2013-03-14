class AddMetadataToUsersTable < ActiveRecord::Migration
  def change
      add_column :users, :tagline, :string
      add_column :users, :bio, :string
      add_column :users, :preferences, :string
      add_column :users, :bodytype, :string
      add_column :users, :location, :string
      add_column :users, :status, :string
      add_column :users, :ethnicity, :string
      add_column :users, :gender, :string
      add_column :users, :age, :integer
      add_column :users, :occupation, :string
      add_column :users, :interests, :string
      add_column :users, :political, :string
      add_column :users, :religion, :string
      add_column :users, :education, :string
      add_column :users, :income, :integer
    end
end
