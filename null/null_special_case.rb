#SPECIAL CASE PATTERN [Fowler].
#Returning a Object that handles the special cases
class AnswerList
  #https://www.rubytapas.com/2017/01/31/two-screencasts-two-ways-eradicate-ruby-nil-values/?utm_source=drip&utm_medium=email&utm_campaign=sample-of-tapas-and-upcase
  def initialize
    @list = []
  end

  def add_answer(answer)
    @list.push(answer)
  end

  def last_answer
    @list.last || NoAnswer.new
  end

  def answer_responses
    answer_responses = []
    @list.each do |answer|
      answer_responses.push(answer.response)
    end
    answer_responses
  end
end

class Answer
  def initialize(response)
    @response = response
  end

  def response
    @response
  end
end

class NoAnswer
  def response
    "No answer was given."
  end
end

answer_list = AnswerList.new
answer_list.add_answer(Answer.new("This is my answer."))
empty_list = AnswerList.new

#business logic
p answer_list.last_answer.response
p empty_list.last_answer.response

p answer_list.answer_responses
p empty_list.answer_responses

