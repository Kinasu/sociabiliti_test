class Test

  attr_reader :points
  
  def initialize
    current_path = File.dirname(__FILE__)
    file_path = current_path + '/result_test.txt'
    file_path_question = current_path + '/question_test.txt'

    result_test = File.new(file_path, "r:UTF-8")
    question_test = File.new(file_path_question, "r:UTF-8")
    @questions_test = question_test.readlines
    @result_test_finaly = result_test.readlines
    question_test.close
    result_test.close

    # Поле для хранения кол-ва очков
    @points = 0
    # Счетчик вопросов
    @present_question = 0
  end
  # Интервью
  def interview
    puts @questions_test[@present_question]
    user_input = 0
    
    until (user_input == 1 || user_input == 2 || user_input == 3)
      puts "Введите 1 - Да, 2 - Нет или 3 - Иногда"
      user_input = gets.to_i
    end

    if user_input == 1
      @points += 2
    elsif user_input == 3
      @points += 1
    end       
    # Счетчик вопросов
    @present_question += 1
    # Кол-во вопросов
    if @present_question >= @questions_test.size
      return false
    else
      return true
    end

  end

  def upshot(test)
    puts "Результат теста: \nВсего баллов - #{test.points}:"
    # Расчет результатов
    if (test.points >= 30)
      puts @result_test_finaly[0]
    elsif (test.points >= 25)
      puts @result_test_finaly[1]
    elsif (test.points >= 19)
      puts @result_test_finaly[2]
    elsif (test.points >= 14)
      puts @result_test_finaly[3]
    elsif (test.points >= 9)
      puts @result_test_finaly[4]
    elsif (test.points >= 4)
      puts @result_test_finaly[5]
    elsif (test.points <= 3)
      puts @result_test_finaly[6]
    end        
  end
end
