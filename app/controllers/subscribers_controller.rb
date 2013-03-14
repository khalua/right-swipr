class SubscribersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.create(params[:user])
    subscriber = Subscriber.create(tagline: 'enter a tagline...', bio: 'enter a bio...', gender: 'enter gender', age: 99)
    subscriber.user = user
  end

end