changeset menu
clearChangeSet
	"Clear out the current change set, after getting a confirmation."
	| message |

	self okToChange ifFalse: [^ self].
	myChangeSet isEmpty ifFalse:
		[message := 'Are you certain that you want to\forget all the changes in this set?' withCRs.
		(self confirm: message) ifFalse: [^ self]].
	myChangeSet clear.
	self changed: #classList.
	self changed: #messageList.
	self setContents.
	self contentsChanged.
