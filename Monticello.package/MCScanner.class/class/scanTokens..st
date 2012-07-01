as yet unclassified
scanTokens: aString
	"compatibility"
	^ Array with: (self scan: aString readStream)