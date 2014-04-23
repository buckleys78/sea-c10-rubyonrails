$monsters = []

$monsters << {
  :name => 'Zombie',
  :nocturnal => false,
  :dangers => ['bites', 'scratches'],
  :vulnerabilities => ['fire', 'decapitation'],
  :legs => 2
}
$monsters << {
  :name => 'Mummy',
  :nocturnal => false,
  :dangers => ['bites', 'scratches', 'curses'],
  :vulnerabilities => ['fire', 'decapitation', 'cats'],
  :legs => 2
}
$monsters << {
  :name => 'Vampire',
  :nocturnal => true,
  :dangers => ['bites', 'hypnosis'],
  :vulnerabilities => ['wood', 'decapitation', 'crosses', 'holy_water', 'garlic', 'daylight'],
  :legs => 2
}
$monsters << {
  :name => 'Werewolf',
  :nocturnal => true,
  :dangers => ['bites', 'scratches'],
  :vulnerabilities => ['silver'],
  :legs => 4
}
$monsters << {
  :name => 'Blob',
  :nocturnal => false,
  :dangers => ['suffocation'],
  :vulnerabilities => ['CO2', 'ice', 'cold'],
  :legs => 0
}

puts "How many monsters are two legged?"
#puts $monsters.select{|m| m[:legs] == 2 }
puts $monsters.count{ |m| m[:legs] == 2 }
#puts $monsters.select{|m| m[:legs]== 2}.map{|m| m[:name]}

puts "How many monsters are nocturnal?"
puts $monsters.count{ |m| m[:nocturnal]}
puts "What are the names of the monsters that are nocturnal?"
puts $monsters.select{|m| m[:nocturnal]}.map{|m| m[:name]}
puts "How many legs do all our monsters have?"
puts $monsters.inject(0) {|sum,m| sum + m[:legs]}
puts "What are the 2 most common dangers of our monsters?"
h = Hash.new(0)
$monsters.each do |m|
  m[:dangers].each do |d|
    h[d] +=1
  end
end
top_danger = h.max_by {|k, v| v } [0]
h2 = h.clone
h2.delete(top_danger)
second_danger = h2.max_by {|k, v| v } [0]
puts "Top danger: #{top_danger}, Next danger: #{second_danger}"
puts "What are the 2 most common vulnerabilities of our monsters?"
h = Hash.new(0)
$monsters.each do |m|
  m[:vulnerabilities].each do |d|
    h[d] +=1
  end
end
top_vulnerability = h.max_by {|k, v| v } [0]
h2 = h.clone
h2.delete(top_vulnerability)
second_vulnerability = h2.max_by {|k, v| v } [0]
puts "Top vulnerability: #{top_vulnerability}, Next vulnerability: #{second_vulnerability}"