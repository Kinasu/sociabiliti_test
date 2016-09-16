class Test
  attr_accessor :points
  
  def initialize
    # Поле для хранения кол-ва очков
    @points = 0
    # Счетчик вопросов
    @present_question = 0
  end
  # Интервью
  def interview(questions_test)
    puts questions_test[@present_question]
    user_input = 0
    
    until (user_input == 1 || user_input == 2 || user_input == 3)
      puts "Вы ошиблись, \nВведите 1 - Да, 2 - Нет или 3 - Иногда"
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
    if @present_question >= questions_test.size
      return false
    else
      return true
    end

  end

  def upshot(result_test_finaly)
    
        # Расчет результатов
    if (@points >= 30)
      puts result_test_finaly[0]
    elsif (@points >= 25)
      puts result_test_finaly[1]
    elsif (@points >= 19)
      puts result_test_finaly[2]
    elsif (@points >= 14)
      puts result_test_finaly[3]
    elsif (@points >= 9)
      puts result_test_finaly[4]
    elsif (@points >= 4)
      puts result_test_finaly[5]
    elsif (@points <= 3)
      puts result_test_finaly[6]
    end 
    puts       
  end
end
