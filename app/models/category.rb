class Category < ApplicationRecord
  has_many :donations
  validates :name, presence: true
  def display_name
    self.name.split("-").map { |word| word.capitalize }.join(" ")
  end
end