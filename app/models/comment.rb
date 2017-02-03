class Comment < ApplicationRecord
  belongs_to :eater, optional: true
  belongs_to :sandwich
  # validates :text, :sandwich_id, :eater_id, presence: true
  # accepts_nested_attributes_for :eater
end
