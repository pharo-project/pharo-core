changeset menu
methodConflictsWithOtherSide
	"Check to see if the change set on the other side shares any methods with the selected change set; if so, open a browser on all such."

	| aList other |

	self checkThatSidesDiffer: [^ self].
	other := (parent other: self) changeSet.
	aList := myChangeSet 
		messageListForChangesWhich: [ :aClass :aSelector |
			aClass notNil and: [(other methodChangesAtClass: aClass name) includesKey: aSelector]
		]
		ifNone:  [^ self inform: 'There are no methods that appear
both in this change set and
in the one on the other side.'].
	
	(Smalltalk tools messageList 
		on: (aList inject: MessageList new into: [:sum :each | sum addMethodReference: each])  
		named: 'Methods in "', myChangeSet name, '" that are also in ', other name,' (', aList size printString, ')') open
	