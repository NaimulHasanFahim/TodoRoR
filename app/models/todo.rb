class Todo < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10 }

  VALID_STATUSES = ["To Do", "Doing", "Done"]

  validates :status, inclusion: { in: VALID_STATUSES }
end
