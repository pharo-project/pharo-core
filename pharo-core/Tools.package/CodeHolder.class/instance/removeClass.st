commands
removeClass
	"Remove the selected class from the system, at interactive user request.  Make certain the user really wants to do this, since it is not reversible.  Answer true if removal actually happened."

	| message  className classToRemove result |
	self okToChange ifFalse: [^ false].
	classToRemove := self selectedClassOrMetaClass ifNil: [Beeper beep. ^ false].
	classToRemove := classToRemove theNonMetaClass.
	className := classToRemove name.
	message := 'Are you certain that you
want to REMOVE the class ', className, '
from the system?'.
	(result := self confirm: message)
		ifTrue: 
			[classToRemove subclasses size > 0
				ifTrue: [(self confirm: 'class has subclasses: ' , message)
					ifFalse: [^ false]].
			classToRemove removeFromSystem.
			self changed: #classList.
			true].
	^ result