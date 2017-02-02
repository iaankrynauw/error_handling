#Using Exceptions!
class Answer
  def initialize(response)
    @response = response
  end

  def response
    @response
  end
end
###

class AnswerList
  #Exceptions
  class EmptyAnswerList < StandardError; end
  ###
  def initialize
    @list = []
  end

  def add_answer(answer)
    @list.push(answer)
  end

  def last_answer
    if @list.last
      @list.last
    else
      throw EmptyAnswerList
    end
  end

  def answer_responses
    answer_responses = []
    @list.each do |answer|
      answer_responses.push(answer.response)
    end
    answer_responses
  end
end
###

#create two answer_lists
answer_list = AnswerList.new
empty_list = AnswerList.new
#
#add answer to first list
answer_list.add_answer(Answer.new("This is my answer."))


#print last answer response
begin
  #business logic!
  p answer_list.last_answer.response
  p empty_list.last_answer.response
rescue => e
  #handling of errors
  p "EXCEPTION: #{e} was thrown"
end

#print all answer responses
begin
  #business logic!
  p answer_list.answer_responses
  p empty_list.answer_responses
rescue => e
  #handling of errors
  p "EXCEPTION: #{e} was thrown"
end
