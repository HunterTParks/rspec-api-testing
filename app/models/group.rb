class Group < ApplicationRecord
  has_many :users, :todos
end
