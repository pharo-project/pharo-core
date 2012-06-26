system primitives
endsWithAColon 
	"Answer whether the final character of the receiver is a colon"

	^ self size > 0 and: [self last == $:]

"
#fred: endsWithAColon
'fred' endsWithAColon
"