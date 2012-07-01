as yet unclassified
keyStroke: event 
	"Process keys to switch task."
	
	event keyCharacter = Character escape ifTrue: [^self delete].
	event anyModifierKeyPressed ifFalse: [^self done].
	
	self class useHistoricalShortcuts
		ifTrue: [
			event keyCharacter = Character arrowLeft
				ifTrue: [^self selectPreviousTask].
			event keyCharacter = Character arrowRight
				ifTrue: [^self selectNextTask]]
		ifFalse: [
			event keyString =  '<Opt-Shift-tab>'
				ifTrue: [^self selectPreviousTask].
			 event keyString =  '<Opt-tab>'	
				ifTrue: [^self selectNextTask]]