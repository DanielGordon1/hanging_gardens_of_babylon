class Garden < ApplicationRecord
  validates :name, :banner_url, presence: true
  validates :name, uniqueness: true
  has_many :plants, dependent: :destroy
end
