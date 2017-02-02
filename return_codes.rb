module Errors
  FAILED = 0
  SUCCEDED = 1
  UNKNOWN = 2
end

class ComplexProcess

  def excecute
    if [true, false].sample
      return Errors::SUCCEDED
    end
    if [true, false].sample
      return Errors::UNKNOWN
    end
    return Errors::FAILED
  end
end

cp = ComplexProcess.new
response = cp.excecute

case response
when Errors::SUCCEDED
  p "It worked!"
when Errors::FAILED
  p "It failed"
when Errors::UNKNOWN
  p "Don't know what happened"
end
# ###

# class Failed < StandardError; end
# class Unknown < StandardError; end

# class ComplexProcess

#   def excecute
#     if [true, false].sample
#       return
#     end
#     if [true, false].sample
#       raise Unknown
#     end
#     raise Failed
#   end
# end

# cp = ComplexProcess.new
# begin
#   response = cp.excecute
#   p "It worked!"
# rescue Failed => e
#   p "It failed"
# rescue Unknown => e
#   p "Don't know what happened"
# end
