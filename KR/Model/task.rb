class Task < ApplicationRecord
  validates :name, presence: true

  enum status: { pending: 'в очікуванні', in_progress: 'в роботі', completed: 'завершені' }
end
