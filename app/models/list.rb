class List < ActiveRecord::Base
  validates :name, presence: true


  def add(desc)
    self.tasks << Task.create(:description => desc :complete => 0)
    return true
  end

  def delete(num)

  end

  def complete(num)

  end

end
