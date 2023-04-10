def top_three_words(text)
  # Перетворення рядку тексту на масив слів
  words = text.downcase.scan(/\w+[\w']*/)

  # Видалення апострофів з кінця та початку слів
  words = words.map { |word| word.gsub(/\A'|'\z/, '') }

  # Підрахунок кількості випадків кожного слова
  counts = Hash.new(0)
  words.each { |word| counts[word] += 1 }

  # Сортування слів за спаданням кількості випадків та відбір топ-3
  top_three = counts.sort_by { |word, count| -count }.take(3)

  # Повернення топ-3 слів у порядку зменшення кількості випадків
  top_three.map { |word, count| word }
end

text = "In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income."

puts(top_three_words(text))