class Question < ActiveRecord::Base
  belongs_to :civilian
  has_one :answer
end