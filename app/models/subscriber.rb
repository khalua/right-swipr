# == Schema Information
#
# Table name: subscribers
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  tagline     :string(255)
#  bio         :string(255)
#  preferences :string(255)
#  bodytype    :string(255)
#  location    :string(255)
#  status      :string(255)
#  ethnicity   :string(255)
#  gender      :string(255)
#  age         :integer
#  occupation  :string(255)
#  interests   :string(255)
#  political   :string(255)
#  religion    :string(255)
#  education   :string(255)
#  income      :decimal(, )
#


class Subscriber < ActiveRecord::Base
  attr_accessible :tagline, :bio, :preferences, :bodytype, :location, :status, :ethnicity, :gender, :age, :occupation, :interests, :political, :religion, :education, :income
  has_one :user, :as => :userable
  validates :tagline, :bio, :gender, :age, :presence => true
  validates :age, :numericality => { :greater_than_or_equal_to => 18 }
end


 #   it 'fails validation if tagline, bio, gender or age are not present or age < 18 years old' do
