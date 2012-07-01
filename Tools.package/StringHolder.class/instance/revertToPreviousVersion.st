*Tools
revertToPreviousVersion
	"Revert to the previous version of the current method"
	| aClass aSelector  changeRecords |
	self okToChange ifFalse: [^ self].
	aClass := self selectedClassOrMetaClass.
	aClass ifNil: [^ self changed: #flash].
	aSelector := self selectedMessageName.
	changeRecords := aClass changeRecordsAt: aSelector.
	(changeRecords == nil or: [changeRecords size <= 1]) ifTrue: [self changed: #flash.  ^ Beeper beep].
	changeRecords second fileIn.
	self contentsChanged
