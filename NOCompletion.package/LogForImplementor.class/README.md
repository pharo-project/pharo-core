I added the methods that were different (mainly in class extensions) of NECcompltation. That way we can compare.

Here are the notes resulting from the comparison of the two approaches

* ecompletion override TextMorph>>keyStroke: 

* OCompletion uses the ToolSet

ECToolSet>>codeCompletionAround: aBlock textMorph: aTextMorph keyStroke: evt
	| completionAllowed editor stringHolder |
	
	editor := aTextMorph editor.
	stringHolder := editor ifNotNil: [editor model].

	completionAllowed := NECPreferences enabled and:[ NECController allowModel: stringHolder ].
	completionAllowed
		ifTrue: [(stringHolder completionController handleKeystrokeBefore: evt editor: editor)
				ifTrue: [^ self]].
	aBlock value.
	"sends to keyStroke event handler, if any"
	"Narrow the completion with any of the keys"
	completionAllowed
		ifTrue: [stringHolder completionController handleKeystrokeAfter: evt editor: editor]
		
SmalltalkEditor>>codeCompletionAround:  aBlock textMorph:  aTextMorph keyStroke: anEvent
	"I'm a editor for Smalltalk, so, ok do completion around"
	Smalltalk tools codeCompletionAround: aBlock textMorph: aTextMorph keyStroke: anEvent
	
		
TextMorph>>keyStroke: evt
	"Handle a keystroke event."
	self resetBlinkCursor. "don't blink during type-in"
	self editor 
		codeCompletionAround: [| action |
			evt keyValue = 13 ifTrue:["CR - check for special action"
				action := self crAction.
				action ifNotNil:[
					"Note: Code below assumes that this was some
					input field reacting on CR. Break the keyboard
					focus so that the receiver can be safely deleted."
					evt hand newKeyboardFocus: nil.
					^ action value]].
			self handleInteraction: [editor keystroke: evt].
			self updateFromParagraph.
			super keyStroke: evt  "sends to keyStroke event handler, if any"]
		textMorph: self 
		keyStroke: evt
		
ToolRegistry>>codeCompletionAround: aBlock textMorph: aTextMorph keyStroke: evt
	^(self hasToolNamed: #codeCompletion)
	ifTrue: [ self codeCompletion codeCompletionAround: aBlock textMorph: aTextMorph keyStroke: evt ]
	ifFalse: [ aBlock value ]
		





* how to handle extension
so far OCompletion is doing

StringHolder|Workspace>>createCompletionController
	
	^(ECPreferences useECompletionInsteadOfOCompletion
		ifFalse: [ OController ]
		ifTrue: [ ECController ])
			model: self
	
* Then we should add something to FlatMessageListBrowser and this is not nice.
	
* we shoul unify the settings
in ECompletion the ugly squeakish preferences

useECompletionInsteadOfOCompletion

	<preference: 'Use eCompletion instead of OCompletion'
		category: 'OCompletion'
		description: 'Decide if you want to use eCompletion in newly opened tools instead of OCompletion.'
		type: #Boolean>
	^useECompletionInsteadOfOCompletion ifNil: [ false ]


in OCompletion

settingsOn: aBuilder 
	<systemsettings>
	
	(aBuilder setting: #'OCompletion: Code Completion') 
		target: self; 
		parentName: #codeBrowsing;
		selector: #enabled;
		icon: UITheme current smallConfigurationIcon;
		description: 'Enable or disable code completion in browsers, debuggers and workspaces.';
		with: [
			(aBuilder setting: #caseSensitive) 
				label: 'Case Sensitive';
		 		description: 'Decide if you want OCompletion to be case sensitive or not.'.
			(aBuilder setting: #smartCharacters) 
				label: 'Smart Characters';
		 		description: 'Decide if you want OCompletion to use smart characters, e.g, to automatically close brackets.'.
			(aBuilder setting: #matchSubStrings)
				label: 'Match SubStrings';
				description: 'Decide if you want OCompletion to perform subString searches, which can be slower, rather than only front-matching selectors.'.
			(aBuilder setting: #useECompletionInsteadOfOCompletion)
				label: 'Use eCompletion instead of OCompletion';
				description: 'Decide if you want to use eCompletion in newly opened tools instead of OCompletion.' ]
	





* Open question why 
StringHolder>>completionController
	| controller | 
	controller := self triggerEvent: #getCompletionController.
	controller ifNil:[ controller := self initializeCompletionController ].
	^controller
	
Trigger an event and the initialize

StringHolder>>initializeCompletionController
	| controller |
	controller := self createCompletionController.
	self 
		when: #getCompletionController
		evaluate: (MessageSend 
				receiver: controller
				selector: #yourself).
	^ controller
	
possible answer because this is to avoid adding an instance variable? But I do not understand since it could also just return the instance.
