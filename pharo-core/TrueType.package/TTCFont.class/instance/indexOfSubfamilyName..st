private
indexOfSubfamilyName: aName
	| decoded |

	"decodeStyleName will consume all the modifiers and leave nothing if everything was recognized."
	decoded := TextStyle decodeStyleName: aName.
	decoded second isEmpty ifTrue: [ ^decoded first ].

	"If you get a halt here - please add the missing synonym to the lookup table in TextStyle>>decodeStyleName: ."
	
	self error: 'please add the missing synonym ', aName, ' to the lookup table in TextStyle>>decodeStyleName:'.

	^0.