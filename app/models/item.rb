class Item < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :string, length: { minimum: 1 }, presence: true
end
