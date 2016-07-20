class Actor < ActiveRecord::Base
  belongs_to :film
  has_many :comments, as: :commentable
end
