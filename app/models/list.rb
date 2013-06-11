class List < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :title, :date
  has_many :list_tasks
  has_many :tasks, :through => :list_tasks
  validates :title, :date, :presence => true
end
