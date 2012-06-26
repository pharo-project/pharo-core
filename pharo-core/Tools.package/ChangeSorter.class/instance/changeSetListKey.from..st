changeset menu
changeSetListKey: aChar from: view
	"Respond to a Command key.  I am a model with a listView that has a list of changeSets."

	aChar == $b ifTrue: [^ self browseChangeSet].
	aChar == $B ifTrue: [^ self openChangeSetBrowser].
	aChar == $c ifTrue: [^ self copyAllToOther].
	aChar == $D ifTrue: [^ self toggleDiffing]. 
	aChar == $f ifTrue: [^ self findChangeSet].
	aChar == $m ifTrue: [^ self newCurrent].
	aChar == $n ifTrue: [^ self newSet].
	aChar == $o ifTrue: [^ self fileOut].
	aChar == $p ifTrue: [^ self addPreamble].
	aChar == $r ifTrue: [^ self rename].
	aChar == $x ifTrue: [^ self remove].
	aChar == $- ifTrue: [^ self subtractOtherSide].
	^ self messageListKey: aChar from: view