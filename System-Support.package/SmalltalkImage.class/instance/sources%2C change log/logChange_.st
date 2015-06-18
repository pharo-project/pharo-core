logChange: aStringOrText
	"Write the argument, aString, onto the changes file."

	self flag: #tobeprecated.
	
	^ ChangesLog default logChange: aStringOrText