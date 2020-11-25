class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :phone_number, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, acceptance: { accept: ['Chinese', 'Italian', 'Japanese', 'French', 'Belgian'] }
end
