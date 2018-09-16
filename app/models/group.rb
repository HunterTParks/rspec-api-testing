class Group < ApplicationRecord
  validates :name, presence: true
  has_and_belongs_to_many :users
  has_many :todos, through: :users
end
