class Comment < ActiveRecord::Base
  belongs_to :concert

  validates :user, :comment, presence: true

end
