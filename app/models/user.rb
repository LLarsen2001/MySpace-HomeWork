# frozen_string_literal: true

class User < ActiveRecord::Base
  serialize :followed_profiles, Array

  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  def self.unfollowed_profiles(ids)
    ids = ids.empty? ? [0] : ids 
    Profile.where("id NOT IN (?)", ids).order("RANDOM()")
  end
  
  def self.followed_profiles(ids)
    ids = ids.empty? ? [0] : ids 
    Profile.where("id IN (?)", ids).order("RANDOM()")
  end
 
end
