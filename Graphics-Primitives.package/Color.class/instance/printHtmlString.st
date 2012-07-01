html
printHtmlString
	"answer a string whose characters are the html representation  
	of the receiver"
	^ ((self red * 255) asInteger printStringBase: 16 length: 2 padded: true)
	, ((self green * 255) asInteger printStringBase: 16 length: 2 padded: true)
	, ((self blue * 255) asInteger printStringBase: 16 length: 2 padded: true)