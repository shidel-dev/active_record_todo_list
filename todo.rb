require_relative 'config/application'

puts "Put your application code in #{File.expand_path(__FILE__)}"


def controller(arguments)
  list = List.first  #hardcoded first list
  if arguments == "list"
     all_tasks = List.first.tasks
     ShowTasks.new.render(all_tasks)
  elsif arguments[0] == "add"
    list.add_task(arguments[(1..-1)].join(' ')) #refactor to not need quotes on input later
  elsif arguments[0] == "delete"
    list.delete_task(arguments[1].to_i - 1)
  elsif arguments[0] == "complete"
    list.complete_task(arguments[1].to_i - 1) #fix index from 0 index list to 1 index list later
  end
end


if ARGV.any?
  controller(ARGV)
end
