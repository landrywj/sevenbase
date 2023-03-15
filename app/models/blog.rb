class Blog < ApplicationRecord
  belongs_to :user
  has_many :blahs, dependent: :destroy
end
