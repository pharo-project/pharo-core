request: queryString initialAnswer: defaultAnswer centerAt: aPoint 	"Create an instance of me whose question is queryString with the given initial answer. Answer the string the user accepts. Answer the empty string if the user cancels."

	self 
		deprecated: 'Use #request:initialAnswer: instead'
		on: 	'7 October 2014' 
		in: 'UIManager'.

	 ^ self 
		request: queryString 
		initialAnswer: defaultAnswer 
		
