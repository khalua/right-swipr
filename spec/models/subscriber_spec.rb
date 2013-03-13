# == Schema Information
#
# Table name: subscribers
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'spec_helper'

describe Subscriber do
  describe '.new' do
    it 'creates an instance of Subscriber' do
      subscriber = Subscriber.new
      expect(subscriber).to be_an_instance_of(Subscriber)
    end
  end

  describe '#user' do  #we're in the Subscriber class, and we're going to test the user instance method
    it 'has a user' do
      subscriber = Subscriber.new
      user = User.new
      subscriber.user = user
      expect(subscriber.user).to be_an_instance_of(User)
    end
end

  describe '.create' do
    it 'has an id' do
      subscriber = Subscriber.create
      expect(subscriber.id).to_not be nil
    end
  end
end


