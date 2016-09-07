# require './test_result.rb' # подключаем файлы с классами
require './lib/test_class.rb' #28_2 положила файлы с классом и текстом в отдельную папку

# Приветствие. Начало работы.
puts "Здравствуйте, мы зададим Вам вопросы, для определения Вашей коммуникабельности."

test = Test.new

while test.interview == true do 
end
 
# Тест
test.upshot(test)