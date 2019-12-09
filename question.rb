class Question 
  attr_reader :question
  def initialize(question)
    @question = question
    @answer = answer
  end
  def initialize(answer)
  end
 

  def new_question
    a = rand(1..20)
    b = rand(1..20)
    @answer = a + b
    puts "What is #{a} plus #{b}?"
    # puts @answer
  end
  
end

# a = Question.new("Question?")
# puts a.new_question