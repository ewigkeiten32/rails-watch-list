class Bookmark < ApplicationRecord
  validates_length_of :comment, minimum: 5
  validates_uniqueness_of :movie, :scope => [:list]
  belongs_to :movie
  belongs_to :list
end
