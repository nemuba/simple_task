class Task < ApplicationRecord
  belongs_to :user
  broadcasts_to ->(_) { :tasks }
  scope :completed, -> { where(status: true).count }
  scope :incomplete, -> { where(status: false).count }

  validates :title, presence: true
end
