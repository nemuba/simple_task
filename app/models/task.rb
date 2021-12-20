class Task < ApplicationRecord
  scope :completed, -> { where(status: true).count }
  scope :incomplete, -> { where(status: false).count }
end
