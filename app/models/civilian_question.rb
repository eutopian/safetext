class CivilianQuestion < ActiveRecord::Base
  belongs_to :civilians
  belongs_to :questions
end