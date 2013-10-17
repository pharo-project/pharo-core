removeClasses: aCollection
	"Remove the selected classes from the system, at interactive user request.  Make certain the user really wants to do this, since it is not reversible.  Answer true if removal actually happened."
	| message  classesName classesToRemove result |

	aCollection isEmptyOrNil ifTrue: [ Beeper beep. ^ false ].
	classesToRemove := aCollection collect: #theNonMetaClass.
	classesName := (classesToRemove collect: #name) joinUsing: ', '.
	message := 'Are you certain that you
want to REMOVE the classes ', classesName, '
from the system ?'.
	(result := self confirm: message)
		ifTrue: 
			[ classesToRemove do: [:classToRemove |
				message := classToRemove name, ' has subclasses.
Do you really want to REMOVE it from the system ?'.
				classToRemove subclasses size > 0
					ifTrue: [ (self confirm: message)
								ifTrue: [ classToRemove removeFromSystem ]]
					ifFalse: [ classToRemove removeFromSystem ]]].
	^ result