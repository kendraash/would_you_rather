class Comment < ActiveRecord::Base
  belongs_to :choice
  validates_presence_of :content
end
