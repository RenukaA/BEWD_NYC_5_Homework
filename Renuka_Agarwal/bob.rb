class Bob
  def hey(message)
   	response = ["Whatever.", "Sure.", "Woah, chill out!", "Fine. Be that way!"]
   	if message.strip.empty?
   		response[3]
    elsif message == message.upcase && message.match(/[a-zA-Z]/)
    	response[2]
    elsif message[-1] == "?"
    	response[1]
    else
    	response[0]
  	end
  end
end 
