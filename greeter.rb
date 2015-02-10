class Greeter
  def greet
  	"Test"
  end

  

  def quote tag=nil
  	quotes = {
			:life => [
				"The best revenge is massive success.",
				"The best is yet to come." 
			 ],
			 :love => [
					"....A simple I love you means more than money....",
					"For nobody else, gave me thrill-with all your faults, I love you still. It had to be you, wonderful you, it had to be you."
				]
  	}

  	if tag && quotes[tag.to_sym]
  		quotes[tag.to_sym].sample
  	else
  		"please try again"
  	end
  	

  end
end
