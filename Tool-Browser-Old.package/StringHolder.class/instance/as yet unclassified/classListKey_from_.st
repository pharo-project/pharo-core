classListKey: aChar from: view 
	"Respond to a Command key.  I am a model with a list of classes and a 
	code pane, and I also have a listView that has a list of methods.  The 
	view knows how to get the list and selection."

	aChar == $f ifTrue: [^ self findMethod].
	aChar == $r ifTrue: [^ self recent].
	aChar == $h ifTrue: [^ self spawnHierarchy].
	aChar == $x ifTrue: [^ self removeClass].
	^ self messageListKey: aChar from: view