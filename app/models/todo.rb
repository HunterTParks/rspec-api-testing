class Todo < ApplicationRecord
  validates :title, :text, presence: true
  belongs_to :groups, optional: true
  belongs_to :users
end
