class AddReferencesUsersToTask < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks, :user, foreign_key: true
  end
end
