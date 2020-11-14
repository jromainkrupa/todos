class Todo < ApplicationRecord
  def completed?
    completed_at? #active record
  end
end
