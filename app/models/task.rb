class Task < ActiveRecord::Base
  attr_accessible :title
  has_many :lists, :through => :list_tasks
  has_many :list_tasks
  validates :title, :presence => true
end
