class Book < ApplicationRecord
  validates :author, presence: true
  validates :title, presence: true
  belongs_to :category
  validates_uniqueness_of :title, scope: [:author, :year, :editor]
end
