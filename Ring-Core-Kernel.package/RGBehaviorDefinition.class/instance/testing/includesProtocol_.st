includesProtocol: aString
	"Looks for a protocols named = aString"
	
	^protocols anySatisfy: [ :each| each = aString ]
