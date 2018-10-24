class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :new
  has_many :comment
end
