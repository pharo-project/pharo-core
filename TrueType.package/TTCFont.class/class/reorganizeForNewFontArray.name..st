instance creation
reorganizeForNewFontArray: array name: styleName

	| style existings regular altName |
	(TextSharedInformation includesKey: styleName) ifFalse: [
		TextSharedInformation at: styleName put: (TextStyle fontArray: array).
		^ TextSharedInformation at: styleName.
	].
 
	"There is a text style with the name I want to use.  See if it is a TTC font..."
	style := TextSharedInformation at: styleName.
	style isTTCStyle ifFalse: [
		altName := ((array at: 1) name, 'TT') asSymbol.
		^ self reorganizeForNewFontArray: array name: altName.
	].

	existings := (self getExistings: style fontArray), (Array with: array).
	regular := existings detect: [:e | (e at: 1) isRegular] ifNone: [existings at: 1].

	regular do: [:r |
		r addLined: r.
	].

	"The existing array may be different in size than the new one."
	existings do: [:e |
		(e at: 1) isRegular ifFalse: [
			regular do: [ :r | | f |
				f := e detect: [ :ea | ea pointSize = r pointSize ] ifNone: [ ].
				f ifNotNil: [ r derivativeFont: f ].
			].
		].
	].

	style newFontArray: regular.
	self register: regular at: styleName.
	self recreateCache.	
	^ style.
