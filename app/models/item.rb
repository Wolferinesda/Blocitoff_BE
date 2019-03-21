class Item < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :name, length: { minimum: 1 }, presence: true
end
