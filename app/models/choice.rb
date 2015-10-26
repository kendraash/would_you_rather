class Choice < ActiveRecord::Base
  has_many :comments
  validates_presence_of :option_a, :option_b
end
