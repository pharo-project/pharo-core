confirm: queryString
	"Put up a yes/no menu with caption queryString. Answer true if the 
	response is yes, false if no. This is a modal question--the user must 
	respond yes or no."

	"MenuMorph confirm: 'Are you sure?'"

	^ self confirm: queryString trueChoice: 'Yes' translated falseChoice: 'No' translated