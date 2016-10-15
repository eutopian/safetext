class Civilian < ActiveRecord::Base
  has_many :civilian_questions
  has_many :questions, through: :civilian_questions
  has_many :answers
end
