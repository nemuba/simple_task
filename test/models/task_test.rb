require "test_helper"

class TaskTest < ActiveSupport::TestCase
  test "the truth" do
    task = tasks(:one)
    assert task.valid?
  end
end
