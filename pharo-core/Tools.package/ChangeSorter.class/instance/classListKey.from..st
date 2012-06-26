class list
classListKey: aChar from: view
	"Respond to a Command key in the class-list pane."

	aChar == $x ifTrue: [^ self removeClass].
	aChar == $d ifTrue: [^ self forgetClass]. 

	^ self messageListKey: aChar from: view "picks up b,h,p"