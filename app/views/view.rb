class ShowTasks
  def render(array_of_tasks)
    array_of_tasks.each_with_index do |i, task|
      puts "#{i+1}. [#{task.complete == 1 ? "X" : " "}] - #{task.description}"
  end
end

class ShowTask
  def render(task_string)
    puts task_string
  end
end

class ShowAddedTask
  def render(append_string)
    puts "Appended: " + append_string + " has been added to your TODO list..."
  end
end

class ShowDeletedTask
  def render(delete_string)
    puts "Deleted: " + delete_string
  end
end

class ShowCompleted
  def render(task_string)
    puts "Completed: " + task_string
  end
end
