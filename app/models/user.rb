# frozen_string_literal: true

class User < ActiveRecord::Base
  serialize :liked_profiles, Array

  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
  def self.liked_profiles(ids)
    ids = ids.empty? ? [0] : ids 
    Profile.where("id IN (?)", ids).order("RANDOM")
  end
end
