message list menu
messageListKey: aChar from: view
	"Respond to a Command key.  I am a model with a code pane, and I also
	have a listView that has a list of methods.  The view knows how to get
	the list and selection."

	| sel class |
	aChar == $D ifTrue: [^ self toggleDiffing].

	sel := self selectedMessageName.
	aChar == $m ifTrue:  "These next two put up a type in if no message selected"
		[^ self useSelector: sel orGetSelectorAndSendQuery: #browseAllImplementorsOf: to: self systemNavigation].
	aChar == $n ifTrue: 
		[^ self useSelector: sel orGetSelectorAndSendQuery: #browseAllCallsOn: to: self systemNavigation].

	"The following require a class selection"
	(class := self selectedClassOrMetaClass) ifNil: [^ self arrowKey: aChar from: view].
	aChar == $b ifTrue: [^ Smalltalk tools browser fullOnClass: class selector: sel].
	aChar == $N ifTrue: [^ self browseClassRefs].
	aChar == $i ifTrue: [^ self methodHierarchy].
	aChar == $h ifTrue: [^ self classHierarchy].

	"The following require a method selection"
	sel ifNotNil: 
		[aChar == $o ifTrue: [^ self fileOutMessage].
		aChar == $c ifTrue: [^ self copySelector].
		aChar == $v ifTrue: [^ self browseVersions].
		aChar == $x ifTrue: [^ self removeMessage].
		aChar == $d ifTrue: [^ self removeMessageFromBrowser].

		(aChar == $C and: [self canShowMultipleMessageCategories])
			ifTrue: [^ self showHomeCategory]].

	^ self arrowKey: aChar from: view