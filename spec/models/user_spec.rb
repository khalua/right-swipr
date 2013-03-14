# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  userable_id     :integer
#  userable_type   :string(255)
#  tagline         :string(255)
#  bio             :string(255)
#  preferences     :string(255)
#  bodytype        :string(255)
#  location        :string(255)
#  status          :string(255)
#  ethnicity       :string(255)
#  gender          :string(255)
#  age             :integer
#  occupation      :string(255)
#  interests       :string(255)
#  political       :string(255)
#  religion        :string(255)
#  education       :string(255)
#  income          :integer
#

require 'spec_helper'

describe User do
  describe '.new' do
    it 'creates an instance of User' do
      user = User.new
      expect(user).to be_an_instance_of(User)
    end
    it 'has username, email, password and password_confirmation' do
      user = User.new(username: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      expect(user.username).to eq 'bob'
      expect(user.email).to eq 'bob@gmail.com'
      expect(user.password).to eq 'a'
      expect(user.password_confirmation).to eq 'a'
    end
  end

  describe '.create' do
    it 'has an id' do
      user = User.create(username: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      expect(user.id).to_not be nil
    end
  end
end


