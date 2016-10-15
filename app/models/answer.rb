class Answer < ActiveRecord::Base
  belongs_to :civilian
  belongs_to :question
end
