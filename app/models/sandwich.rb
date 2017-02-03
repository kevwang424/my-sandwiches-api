class Sandwich < ApplicationRecord
  has_many :eater_sandwiches
  has_many :eaters, through: :eater_sandwiches
  has_many :comments
  validates :ingredients, :eaters, :tasting_notes, :date, presence: true
  accepts_nested_attributes_for :eaters
  accepts_nested_attributes_for :comments, reject_if: :blank_comment?


  def show_date
    self.date.strftime("%A, %B %e, %Y")
  end

  private
  def blank_comment?(attributes)
    attributes[:text].blank? || attributes[:eater_id].blank?
  end

end
