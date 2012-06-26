event handling
keyStroke: event 
	"Process potential command keys.
	Fix for command key required (like PluggableListMorph)."

	| args aCharacter |
	(self navigationKey: event) ifTrue: [^true].
	(self scrollByKeyboard: event) ifTrue: [^self].
	aCharacter := event keyValue asCharacter. 
	"since ctrl-a, for instance, will have keyCharacter of 0 ascii with keyboard event and not $a as before Unicode refactoring"
	(self arrowKey: aCharacter) ifTrue: [^true].
	event anyModifierKeyPressed ifFalse: [
		self basicKeyPressed: aCharacter.
		^false].
	keystrokeActionSelector isNil ifTrue: [^false].
	(args := keystrokeActionSelector numArgs) = 1 
		ifTrue: [^model perform: keystrokeActionSelector with: aCharacter].
	args = 2 
		ifTrue: 
			[^model 
				perform: keystrokeActionSelector
				with: aCharacter
				with: self].
	^self 
		error: 'The keystrokeActionSelector must be a 1- or 2-keyword symbol'