
print 'TEXT?:'
text = gets.chomp
puts text

begin
  print 'Pattern?:'
  pattern = gets.chomp
  regexp = Regexp.new(pattern)
rescue RegexpError => e
  puts "Invaild pattern #{e.message}"
  retry
end

  matches = text.scan(regexp)


if matches.size > 0
  puts "Matched: #{matches.join(',')}"
else
  puts "Nothing matched."
end