class Concert < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  validates :artist, :venue, :city, :date, :price, :description, presence: true

end
