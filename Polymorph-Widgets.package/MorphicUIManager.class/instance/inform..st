ui requests
inform: aStringOrText
	"Display a message for the user to read and then dismiss."
	
	|modalMorph|
	(ProvideAnswerNotification signal: aStringOrText) ifNotNil: [:answer |
		^true].
	modalMorph := self modalMorph.
	^modalMorph theme 
		messageIn: modalMorph
		text: aStringOrText
		title: 'Information' translated