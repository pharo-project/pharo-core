removeClass: aClass
	"Remove the selected class from the system, at interactive user request.  Make certain the user really wants to do this, since it is not reversible.  Answer true if removal actually happened."

	| message  className classToRemove result |
	"This should probably be an assertion, but since this is a tool, we give user feedback."
	classToRemove := aClass ifNil: [self inform: 'Argument to #removeClass: is nil'. ^ false].
	classToRemove := classToRemove theNonMetaClass.
	className := classToRemove name.
	message := 'Are you certain that you
want to REMOVE the class ', className, '
from the system?'.
	(result := self confirm: message)
		ifTrue: 
			[classToRemove subclasses notEmpty
				ifTrue: [(self confirm: 'class has subclasses: ' , message)
					ifFalse: [^ false]].
			classToRemove removeFromSystem ].
	^ result