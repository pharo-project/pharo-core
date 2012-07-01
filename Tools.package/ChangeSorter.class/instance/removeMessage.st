message list
removeMessage
	"Remove the selected msg from the system. Real work done by the 
	parent, a ChangeSorter"
	| confirmation sel |
	self okToChange
		ifFalse: [^ self].
	currentSelector
		ifNotNil: [confirmation := self systemNavigation   confirmRemovalOf: (sel := self selectedMessageName) on: self selectedClassOrMetaClass.
			confirmation = 3
				ifTrue: [^ self].
			self selectedClassOrMetaClass removeSelector: sel.
			self update.
			confirmation = 2
				ifTrue: [self systemNavigation browseAllCallsOn: sel]]