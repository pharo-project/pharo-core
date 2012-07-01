text
setContentsOfChangeSet: changeSet forClass: class andSelector: selector prettyPrint: prettyPrint showDiff: showDiff 
	"return the source code that shows in the bottom pane"
	| strm changeType code |

	
	class
		ifNil: [
			"Only the change set is currently selected"
			^ self buildChangeSetDescriptionFor: changeSet ].
	selector isNil
		ifTrue: [ 
			"class is selected but not the selector"
			^ self buildClassDescriptionFor: changeSet class: class ]
		ifFalse: [
			"a class and a selector are selected"
			^ self buildSelectorDescriptionFor: changeSet class: class selector: selector prettyPrint: prettyPrint showDiff: showDiff ]