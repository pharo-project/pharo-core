accessing
issueNumber
	"Return the entered issue number. 
	Use #asInteger to trim excess data from the user input, such as whitespaces."
	^ self info issueNumber asInteger