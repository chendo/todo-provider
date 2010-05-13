class TodoItem < ActiveRecord::Base
  belongs_to :user
  
  delegate :to_s, :to => :name
end
