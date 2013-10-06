inform: queryString
	"MenuMorph inform: 'I like Pharo'"
	| menu |
	(ProvideAnswerNotification signal: queryString) 
		ifNotNil:[:answer | ^ self].
	menu := self new.
	menu addTitle: queryString icon: Smalltalk ui icons confirmIcon.
	menu add: 'OK' target: self selector: #yourself.
	menu invokeAt: ActiveHand position in: ActiveWorld allowKeyboard: true.