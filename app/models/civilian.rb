class Civilian < ActiveRecord::Base
  has_many :questions
  has_many :answers, through: :questions

  def self.addresses
    self.all.map { |civilian|  civilian.address }
  end 
end
