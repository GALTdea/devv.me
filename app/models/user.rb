class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :profiles
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   after_create :create_profile 


   def create_profile
    Profile.create(user_id: id)
   end
end
