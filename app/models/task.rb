class Task < ApplicationRecord
  belongs_to :user
  broadcasts_to ->(task) { :tasks }
  scope :completed, -> { where(status: true).count }
  scope :incomplete, -> { where(status: false).count }
end
