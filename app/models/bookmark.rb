class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list, dependent: :destroy

  validates_associated :movie, :list, uniqueness: true
  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :movie_id, :scope => :list_id
end
