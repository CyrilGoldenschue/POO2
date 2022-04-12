require './linkedlist'

list = LinkedList.new

list.add_tail('C')
list.add_tail('O')
list.add_tail('O')
list.add_tail('L')

p list.text

puts "#{list.size}"
puts "#{list.empty?}"
puts "#{list.tail}"

puts "RemoveHead: #{list.remove_head}"

p list.text
puts "#{list.size}"
puts "#{list.empty?}"
puts "#{list.head}"