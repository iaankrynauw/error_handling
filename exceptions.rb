class NewException < StandardError; end

begin
  p "123"
  raise NewException
rescue Exception => e
  p "#{e} was thrown"
end



