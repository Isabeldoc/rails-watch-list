class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates_associated :movie, :list, uniqueness: true
  validates :comment, length: { minimum: 6 }
  validates :list_id, presence: true, uniqueness: { scope: :movie_id }
end
