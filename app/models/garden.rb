class Garden < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true, uniqueness: true
  has_many :plants, dependent: :destroy ## orphan records
end
