def reverse_words str
  str.split().reverse.join(' ')
end

p reverse_words "An apple a day keeps the doctor away"