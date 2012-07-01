keyboard
handleKeystrokeBefore: kbEvent editor: theEditor 
	"I return a boolean. true when I have handled the event and no futher processing is needed by the caller."
	| keyValue ctrl cmd down tab colon alphanum del esc enter up |

	self setEditor: theEditor.
	self setModel: theEditor model.
	keyValue := kbEvent keyValue.
	ctrl := kbEvent controlKeyPressed.
	cmd := kbEvent commandKeyPressed.
	down := keyValue = 31.
	up := keyValue = 30.
	tab := kbEvent keyCharacter = Character tab.
	enter := kbEvent keyCharacter = Character cr.
	colon := kbEvent keyCharacter = $:.
	alphanum := kbEvent keyCharacter isAlphaNumeric.
	del := keyValue = 8.
	esc := keyValue = 27.

	self isMenuOpen ifTrue: [menuMorph stillActive].

	del	ifTrue: [ self smartBackspace ifTrue: [ ^ true ]].
	self expanded ifTrue: [ ^ super handleKeystrokeBefore: kbEvent editor: theEditor ].
	
	esc ifTrue: [
		self isMenuOpen 
			ifTrue: [
				self retract. 
				self closeMenu. 
				^true ] ].
	
	(tab and: [ theEditor wordAtCaret notEmpty ]) 
		ifTrue: [
			(context notNil and: [context model notEmpty and: [menuMorph selected > 0]]) 
				ifTrue: [ menuMorph insertSelected ifTrue: [ ^true ] ]
				ifFalse: [ 
					enter ifFalse: [
						self openXMenuFor: theEditor. 
						^true ] ] ].		
	
	((self isMenuOpen & (colon | alphanum | up | down | tab | del) not)
			or: [ self isMenuOpen & self isMenuEmpty ]) 
		ifTrue: [
			self retract. 
			self closeMenu ].
	
	del	ifTrue: [ 
		theEditor isCaretBehindChar not
			ifTrue: [ self closeMenu ].
		^false ].

	(ctrl not & cmd not & alphanum) 
		ifTrue: [ 
			theEditor text ifEmpty: [^ false].  
			theEditor selection ifNotEmpty: [theEditor replaceSelectionWith: ''].
			self isMenuOpen ifFalse: [ self openMenuFor: theEditor ].
			theEditor text ifNotNil: [ menuMorph changed ]. ^false]
		ifFalse: [
			(self smartInput: keyValue) ifNotNil: [^ true]].
		
	down & self isMenuOpen 
		ifTrue: [
			menuMorph selected = 3 ifTrue: [self openXMenuFor: theEditor].
			menuMorph moveDown.
			^true ].
	
	up & self isMenuOpen 
		ifTrue:  [
			menuMorph moveUp.
			^true ]. 
	
	^ super handleKeystrokeBefore: kbEvent editor: theEditor