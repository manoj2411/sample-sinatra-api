class Task < ActiveRecord::Base

  scope :search, ->(query) { where "name LIKE ?", "%#{query}%"}
end
