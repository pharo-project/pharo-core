protocol
setSelectedIndex: anIndex
	"Set the index of the item you want to be selected"
	| idx selection |
	
	self allowToSelect ifFalse: [ ^ self ].
	self okToChange ifFalse: [ ^ self ].
	self listSize isZero ifTrue:  [ ^self ].
	idx := anIndex min: self listSize.
	selection := (self listItems at: idx).
	selection ifNil: [ ^ self ].
	
	selectionHolder index contents: idx.
	selectionHolder selection contents: selection.