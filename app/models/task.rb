class Task < ActiveRecord::Base
  attr_accessible :title
  has_many :lists, :through => :list_tasks
end
