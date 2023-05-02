# frozen_string_literal: true

# Include default devise modules.
class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  # Others available are: # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :blogs, dependent: :nullify
  has_many :blahs, dependent: :destroy
  has_many :rooms, dependent: :destroy
end
