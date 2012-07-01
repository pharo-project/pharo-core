converting
withFirstCharacterDownshifted
	"Return a copy with the first letter downShifted"
	
	| answer |
	
	self ifEmpty: [^ self copy].
	answer := self copy.
	answer at: 1 put: (answer at: 1) asLowercase.
	^ answer. 