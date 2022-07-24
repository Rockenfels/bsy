# frozen_string_literal: true

class User < ApplicationRecord
  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :validatable

  has_many :videos, dependent: :destroy

  validates :username, uniqueness: true
  validates :email, uniqueness: true

  include DeviseTokenAuth::Concerns::User
end
