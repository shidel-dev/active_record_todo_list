require 'pry'

class List < ActiveRecord::Base
  validates :name, presence: true

  # def add_task(desc)
  #   self.tasks << Task.create(:description => desc, :complete => 0)
  #   return true
  # end

  has_many :tasks


  def add_task(desc)
    self.tasks.create(:description => desc, :complete => 0)
  end

  def delete_task(num)
    self.tasks[num].destroy
  end

  def complete_task(num)
    list = self
    list.tasks[num].update_attribute(:complete, 1)
  end
end
