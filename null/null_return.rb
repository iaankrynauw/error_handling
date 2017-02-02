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
  def initialize
    @list = []
  end

  def add_answer(answer)
    @list.push(answer)
  end

  def last_answer
    @list.last
    #returns nil
  end
end
###

#create two answer_lists
answer_list = AnswerList.new
empty_list = AnswerList.new
#
#add answer to first list
answer_list.add_answer(Answer.new("Bank"))

#business logic!
p answer_list.last_answer.response
p empty_list.last_answer
p empty_list.last_answer.response

#Good:
# nothing

#Bad:
# It causes:
# => Java: Null Pointer Exception
# => Ruby: undefined method `response' for nil:NilClass (NoMethodError)
# The entire program stops unless it's caught on a higher level
