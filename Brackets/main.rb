def valid_parentheses?(str)
  stack = []
  brackets = { '(' => ')', '[' => ']', '{' => '}' }

  str.each_char do |char|
    if brackets.keys.include?(char)
      stack.push(char)
    elsif brackets.values.include?(char)
      if brackets[stack.last] == char
        stack.pop
      else
        return false
      end
    end
  end

  stack.empty?
end

puts valid_parentheses?("(){}[]")   #=>  true
puts valid_parentheses?("([{}])")   #=>  true
puts valid_parentheses?("(}")       #=>  false
puts valid_parentheses?("[(])")     #=>  false
puts valid_parentheses?("[({})](]") #=>  false

