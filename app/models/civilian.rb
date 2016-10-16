class Civilian < ActiveRecord::Base
  has_many :civilian_questions
  has_many :questions, through: :civilian_questions
  has_many :answers

  def self.addresses
    self.all.map { |civilian|  civilian.address }
  end 
end
