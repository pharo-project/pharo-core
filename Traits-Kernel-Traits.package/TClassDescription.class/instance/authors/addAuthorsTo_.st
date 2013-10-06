addAuthorsTo: result
	"private method that  to store the result in the argument."
	
	self methodsDo: [:each | result add: each author ]