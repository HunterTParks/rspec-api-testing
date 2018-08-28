class Todo < ApplicationRecord
  validates :title, :text, presence: true
end
