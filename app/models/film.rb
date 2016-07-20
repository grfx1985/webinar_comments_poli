class Film < ActiveRecord::Base
  has_many :actors, dependent: :destroy
end
