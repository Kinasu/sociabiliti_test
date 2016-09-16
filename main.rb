# require './test_result.rb' # подключаем файлы с классами
require_relative 'data/test.rb' #28_2 положила файлы с классом и текстом в отдельную папку

current_path = File.dirname(__FILE__)
file_path = current_path + '/data/result_test.txt'
file_path_question = current_path + '/data/question_test.txt'

result_test = File.new(file_path, "r:UTF-8")
question_test = File.new(file_path_question, "r:UTF-8")
   
if !File.exist?(result_test || question_test)
  abort "Тест сломался, попробуйте позже."
end

questions_test = question_test.readlines
result_test_finaly = result_test.readlines

question_test.close
result_test.close


# Приветствие. Начало работы.
puts "Здравствуйте, мы зададим Вам вопросы, для определения Вашей коммуникабельности."

test = Test.new

while test.interview(questions_test) == true do 
end
 
# результаты теста
puts "\nРезультат теста: \n\nВсего баллов - #{test.points}:"
puts

test.upshot(result_test_finaly)