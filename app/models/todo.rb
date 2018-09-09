class Todo < ApplicationRecord
  validates :title, :text, presence: true
  belongs_to :group, optional: true
end
