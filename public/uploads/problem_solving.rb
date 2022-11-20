# --------------------------- First -------------------------

numbers = [1, 1, 2, 2, 2, 3, 4, 5, 5]

def remove_duplicated(numbers)
  seen = []
  dups = []
  numbers.each { |n| seen.include?(n) ? dups << n : seen << n }

  # puts "numbers : "
  # puts numbers
  # puts "-------------------"

  # puts "cleaned numbers"
  # puts seen
  # puts "-------------------"

  # puts "duplicates"
  # puts dups
  # puts "-------------------"
  return seen.join(""), dups.join("")
end

# puts remove_duplicated(numbers)

# --------------------------- Second -------------------------

def valid_word?(word, chars)
  valid = false
  word.each_char do |character|
    valid = chars.include?(character) ? true : false
  end
  return valid
end

# word = "khalidd"
# chars = %w(i d a l h k o p x)
# puts valid_word?(word, chars) ? "valid" : "not valid"

# ------------------------------ Third ---------------------------

def greater_than(num, array)
  # greater_than_x = []
  # array.each do |i|
  #   greater_than_x << i if i > x
  # end
  # return greater_than_x
  return array.find_all { |x| x > num }
end

# array = [45, 15, 8, 9, 77, 5, 6]
# puts greater_than(8, array)

# ------------------------------ Fourth ---------------------------

def prime_number(num)
  is_prime = false
  (2...num).to_a.each do |x|
    num % x != 0 ? is_prime = true : is_prime = false
    break if is_prime == false
  end
  return is_prime || num == 2 ? "#{num} is a prime number" : "#{num} is not a prime number"
end

# puts prime_number(2)

def prime_numbers(nums)
  is_prime = false
  nums.each do |n|
    (2...n).to_a.each do |x|
      n % x != 0 ? is_prime = true : is_prime = false
      break if is_prime == false
    end
    puts is_prime == true || n == 2 ? "#{n} is a prime number" : "#{n} is not a prime number"
  end
  return ""
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 13]
# puts prime_numbers(numbers)

require "prime"
# num = 4
# puts num.prime? ? "#{num} is a prime number" : "#{num} is not a prime number"
# numbers.each { |n| puts n.prime? ? "#{n} is a prime number" : "#{n} is not a prime number"}

# ------------------------------ Fifth ---------------------------

def prime_numbers_sum(nums)
  is_prime = false
  sum = 0
  nums.each do |n|
    (2...n).to_a.each do |x|
      n % x != 0 ? is_prime = true : is_prime = false
      break if is_prime == false
    end
    sum += n if is_prime == true || n == 2
  end
  return sum
end

# puts prime_numbers_sum(numbers)

# ------------------------------ Sixth ---------------------------

def factorial_sum(number)
  sum = 1
  for i in 1..number
    sum *= i
  end
  return sum
end

def iterative_factorial(n)
  (1..n).inject(:*)
end

def recursive_factorial(n)
  # Base case
  return 1 if n <= 1
  # Recursive call
  n * recursive_factorial(n - 1)
end

# puts "iterative factorial: #{iterative_factorial 5}"
# puts "recursive factorial: #{recursive_factorial 5}"
# puts factorial_sum(6)

# ------------------------------ Seventh ---------------------------

def repeated_digits(number)
  arr_digits = number.to_s.split("") # = 1 2 3 3 2 1 4  4 4 5  5
  digits = [] # = 1 2 3
  repeated = [] # = 3
  for i in arr_digits
    digits.include?(i) ? (repeated.include?(i) ? "" : repeated << i) : digits << i
  end
  return "Original Number: #{number} | Cleared Number: #{digits.join("")} | Repeated Digits: #{repeated.join("").empty? ? "No repeated digits!" : repeated.join(" ")}"
end

# puts repeated_digits(555666888)

# ------------------------------ Eighth ---------------------------

def fibonacci(from, to)
  fibo = []
  from > 0 ? fibo.push(from - 1, from) : from < 0 ? (return "No Fibonacci for Negative Numbers!") : fibo.push(from, 1)
  while fibo.last < to
    fibo << (fibo.last + fibo[fibo.length - 2])
  end
  return fibo
end

# puts "Fibonacci Sequence: #{fibonacci(0, 10000)}"

def fibonacci_mimoization(n)
  memo = []
  (0..n).each do |i|
    memo[i] = i < 2 ? i : (memo[i - 1] + memo[i - 2])
  end
  return memo.join(" ")
end

# puts fibonacci_mimoization(9)

def fibonacci_2(n)
  return n if n < 2
  (fibonacci_2(n - 1) + fibonacci_2(n - 2))
end

# (1..20).each { |n| puts fibonacci_2(n) }
# puts fibonacci_2 9

# ------------------------------ ninth ---------------------------

def find_missing_number(array)
  (1..array.length + 1).each { |n| return "The missing number is: #{n}" if !array.include?(n) }
end

# puts find_missing_number([6, 5, 2, 1, 9, 8, 7, 4, 10, 3, 11, 12, 13, 14, 15, 16, 17, 20, 18])

# ------------------------------ tenth ---------------------------

def missing_letter(letters)
  alphabets = "abcdefghijklmnopqrstuvwxyz"
  start = alphabets.index(letters[0])
  ends = alphabets.index(letters[letters.length - 1])
  (start..ends).each do |x|
    return "The missing letter is : #{alphabets[x]}" if letters[x - start] != alphabets[x]
  end
  return "No Missing Letters in Sequence!"
end

# puts  missing_letter("xyz")
# ------------------------------ eleventh ---------------------------

def reverse_number(number)
  return number.to_s.reverse.to_i
end

# puts "Reversed Number : #{reverse_number(12345)}"

# ------------------------------ twelveth ---------------------------

def number_formatting(number)
  return number.to_s.chars.reverse.each_slice(3).map(&:join).join(",").reverse
end

# puts "Number formatting: #{number_formatting(12345678910)}"

# ------------------------------ twelveth ---------------------------

def longest_word(sentence)
  # longest = sentence.split(" ").first
  # sentence.split(" ").each {|word| longest = word if word.length > longest.length}
  # return longest

  # solution in one line using "reduse(intialize value) { |return value,item| }"

  sentence.split(" ").reduce(longest = sentence.split(" ").first) { |longest, word| word.length > longest.length ? word : longest }
end

# puts "Longest word: #{longest_word("heybye there fromruby worlddddd")}"

# ------------------------------ thirteenth ---------------------------

def remove_character(text, char)
  return text.tr(char, " ")
end

# puts remove_character("@khalid@ahmed@", "@")

# ------------------------------ fourteenth ---------------------------

def remove_dups_words(sentence)
  text = []
  sentence.split(" ").each { |word| text.push(word) if !text.include?(word) }
  return text.join(" ")
end

# puts remove_dups_words("hi be strong and be powerful hi !")

# ------------------------------ fifteenth ---------------------------

def rock_paper_scissors(p1, p2)
  beatmap = {
    "scissors" => "paper",
    "paper" => "rock",
    "rock" => "scissors",
  }

  if p1 == p2
    "Draw!"
  elsif beatmap[p1] == p2
    "Player 1 won!"
  else
    "Player 2 won!"
  end
end

# puts "RPS Game: #{rock_paper_scissors("scissors", "paper")}"

# ------------------------------ sixteenth ---------------------------

def to_camel_case(str)
  # str.split(/[\-_]/).each do |el|
  #   el.capitalize
  # end
  str.split(/[\-_]/).reduce("") do |text, word|
    if word == str.split(/[\-_]/).first
      text += word
    else
      text += word.capitalize
    end
  end
end

# puts to_camel_case("The_stealth_warrior")

# ------------------------------ seventeenth ---------------------------

def valid_parentheses?(parentheses)
  # parentheses += parentheses.split("").reduce(""){|parens, par| parens + par if par == "(" || par == ")"}
  # return false if parentheses[0] == ")" || parentheses[parentheses.length - 1] == "("
  # open_parens = []
  # closed_parens = []
  # parentheses.split("").each do |paren|
  #   if paren == "("
  #     open_parens.push(paren)
  #   elsif paren == ")"
  #     closed_parens.push(paren)
  #     return false if closed_parens.length > open_parens.length
  #   end
  # end
  # closed_parens.length === open_parens.length

  # another solution

  # open = 0
  # parentheses.chars.each do |c|
  #   open += 1 if c == "("
  #   open -= 1 if c == ")"
  #   return false if open < 0
  # end
  # open == 0

  # another solution

  str = parentheses.delete("^()") # ^ means except
  while str.gsub!("()", ""); end
  str == ""
end

# puts "Valid Parentheses: #{valid_parentheses?("r(w()5)s)s")}"

# ------------------------------ eighteenth ---------------------------

def valid_braces(braces)
  # previus_brace = braces[0]
  # open = 0
  # braces.chars.each do |c|
  #   open += 1 if c == "(" || c == "{" || c == "["
  #   open -= 1 if c == ")" || c == "}" || c == "]"

  #   return false if ((previus_brace == "(") && (c == "]" || c == "}")) || ((previus_brace == "[") && (c == "}" || c == ")")) || ((previus_brace == "{") && (c == "]" || c == ")"))
  #   return false if open < 0
  #   previus_brace = c
  # end
  # open == 0

  # another solution

  while braces.gsub!(/(\(\)|\[\]|\{\})/, "") do end
  return braces.empty?
end

# puts "Valid Braces: #{valid_braces("()[]{}")}"

# ------------------------------ nineteenth ---------------------------

def sum_multiples(number)
  return 0 if number <= 0
  mul3 = []
  mul3.push(3)
  mul5 = [] # 5 10
  mul5.push(5)
  while number > mul3.last
    mul3.push(mul3.last + 3)
  end
  while number > mul5.last
    mul5.push(mul5.last + 5)
  end
  mul3.pop if mul3.last >= number
  mul5.pop if mul5.last >= number
  mul5.each do |n|
    if mul3.include?(n)
      mul5.delete(n)
    end
  end
  return mul3.inject(:+) + mul5.inject(:+)

  # return (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)

end

# puts sum_multiples(20)

# ------------------------------ twentieth ---------------------------

def spin_words(string)
  string.split.map { |x| x.length >= 5 ? x.reverse : x }.join(" ")
  # string.gsub(/\w{5,}/, &:reverse)
end

# puts spin_words("welcome to ruby")

# ------------------------------ twenty one ---------------------------

def count_bits(n)
  # n.to_s(2) this transfers decimals to binary
  n.to_s(2).count "1"
end

# puts count_bits(1234)

# ------------------------------ twenty two ---------------------------

def highest_scoring_word(text)
  alphabets = "abcdefghijklmnopqrstuvwxyz"
  words = text.split(" ")
  highest = words.first
  current_score = 0
  last_score = 0
  words.each do |word|
    word.each_char do |char|
      current_score += 1 + alphabets.index(char)
      # return "#{char} : #{alphabets.index(char) + 1}"
    end
    if current_score > last_score
      highest = word
      last_score = current_score
    end
    current_score = 0
  end
  return highest

  # another solution
  # x.scan(/\w+/).max_by{|x|x.sum-x.size*96}
end

# another solution
def high(x)
  x.split.max_by { |w| score_word(w) }
end

def score_word(word)
  word.chars.inject(0) { |sum, ch| sum + (ch.ord - 96) }
end


puts highest_scoring_word("man i need a taxi up to ubud")

# ------------------------------ twenty three ---------------------------

def  first_non_repeating_letter(s)
  s.chars.find {|i| s.downcase.count(i)==1 || s.upcase.count(i)==1} || "None!"
end

# puts first_non_repeating_letter("sTreSS")

# ------------------------------ twenty four ---------------------------

def create_phone_number()
  puts "Enter a 10 digit number, please: "
  number = gets.chomp
  if number =~ /[1-9]/ && number.length == 10
    puts number.gsub(/(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3')
  else
    puts "please enter number between 1-9"
  end
end

# create_phone_number()

# ------------------------------ twenty five ---------------------------

def group_by_marks(marks, pass_marks)
  # your code here
    marks.group_by{|key, value| value > pass_marks ? key = "passed" : key = "failed"}
end
# marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60}
# puts group_by_marks(marks, 30)

# ------------------------------ twenty six ---------------------------

def timeConversion(s)
  # Write your code here
  if s.include?("A")
    s[0..1] = "00" if s[0..1] == "12"
  elsif s.include?("P")
    hour = s[0..1].to_i
    s[0..1] = "#{12+hour}" if hour < 12
  end
  s.gsub!(/[A-Z]/, "")
end
# puts timeConversion("07:05:45PM")

# ------------------------------ twenty seven ---------------------------

def fizzBuzz(n)
  # Write your code here
  mul3 = (1..n).select {|i| i%3==0 }
  mul5 = (1..n).select {|i| i%5==0 }
  (1..n).each do |num|
      if mul3.include?(num) && num != 3 * 5
          puts "Fizz"
      elsif num == mul5.include?(num) && num != 3 * 5
          puts "Buzz"
      elsif num == 5 * 3
          puts "FizzBuzz"
      else
          puts num
      end
  end
end

# fizzBuzz(15)

# ------------------------------ twenty eight ---------------------------

def rot13(secret_messages)
  input = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
  output = 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm'
  secret_messages.collect { |msg| msg.tr(input, output)}
end
# secret_messages = [
# "qrygn",
# "zrrg ng pubpbyngr pbeare",
# "gra zra",
# "gjb onpxhc grnzf",
# "zvqavtug rkgenpgvba"
# ]
# puts rot13(secret_messages)
