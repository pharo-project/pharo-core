keyboard
handleKeystrokeBefore: aKeyboardEvent editor: anEditor 
	"I return a boolean. 
	true when I have handled the event and no futher processing is needed by the caller."
	| keyCharacter controlKeyPressed isSpaceKey |
	self flag: 'XXX this method should be split up'.
	
	self setEditor: anEditor.
	self setModel: editor model.
	
	keyCharacter := aKeyboardEvent keyCharacter.
	controlKeyPressed := aKeyboardEvent controlKeyPressed.
	isSpaceKey := keyCharacter = Character null or: [ keyCharacter = Character space ].
	
	"Ctrl-Space or Tab for open"
	self isMenuOpen
		ifFalse: [ ^ self handleKeystrokeWithoutMenu: aKeyboardEvent ].
	
	(keyCharacter = Character home and: [ self captureNavigationKeys ])
		ifTrue: [
			menuMorph home.
			^ true].

	(keyCharacter = Character end and: [controlKeyPressed not and: [ self captureNavigationKeys ]]) 
		ifTrue: [
			menuMorph end. 
			^ true].

	(keyCharacter = Character arrowRight and: [ self captureNavigationKeys ])
		ifTrue: [
			menuMorph showDetail.
			^ true].

	(keyCharacter = Character arrowLeft and: [ self captureNavigationKeys ])
		ifTrue: [ ^ self leftArrow ].

	keyCharacter = Character arrowUp
		ifTrue: [
			menuMorph moveUp.
			^ true].

	keyCharacter = Character arrowDown
		ifTrue: [
			menuMorph moveDown.
			^ true].

	keyCharacter = Character pageUp
		ifTrue: [
			menuMorph pageUp.
			^ true].

	keyCharacter = Character pageDown
		ifTrue: [
			menuMorph pageDown.
			^ true].

	(keyCharacter = Character enter and: [ NECPreferences useEnterToAccept])
		ifTrue: [
			menuMorph insertSelected
				ifTrue: [^ true]].

	isSpaceKey & controlKeyPressed
		ifTrue: [
			menuMorph insertSelected
				ifTrue: [^ true]].

	keyCharacter = Character tab ifTrue: [
		NECPreferences expandPrefixes
			ifFalse: [ 
				menuMorph insertSelected
					ifTrue: [^ true]]
			ifTrue: [
				menuMorph insertCommonPrefix
					ifTrue: [^ true]]].

	(keyCharacter = $h and: [ aKeyboardEvent commandKeyPressed ]) ifTrue: [ 
		menuMorph help.
		^ true ].

	(keyCharacter = $t and: [ aKeyboardEvent commandKeyPressed ]) ifTrue: [ 
		menuMorph expand.
		^ true ].

	(keyCharacter = $u and: [ aKeyboardEvent commandKeyPressed ]) ifTrue: [ 
		menuMorph switchToUntyped.
		^ true ].	

	"All keys but the alphanumeric chars (without command and control ) 
	and the backspace key do close the menu"
	keyCharacter = Character backspace
		ifTrue: [
			editor isCaretBehindChar not
				ifTrue: [
					self closeMenu].
					^ false].
	(controlKeyPressed not & aKeyboardEvent commandKeyPressed not
			and: [aKeyboardEvent keyCharacter isCompletionCharacter ])
		ifFalse: [
			self closeMenu.
			^ keyCharacter = Character escape].
	
	^ false.