class Film < ActiveRecord::Base
  has_many :actors, dependent: :destroy
  has_many :comments, as: :commentable
end
