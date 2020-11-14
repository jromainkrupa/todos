class Todo < ApplicationRecord
  def completed?
    completed_at? #active record
  end

  def complete!
    touch(:completed_at)
  end
end
