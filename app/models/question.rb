class Question < ActiveRecord::Base
  has_many :civilian_questions
  has_many :civilians, through: :civilian_questions
  has_many :answers
end