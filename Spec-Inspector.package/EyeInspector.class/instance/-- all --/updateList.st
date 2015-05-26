updateList
	"update the list of elements displayed according to the new object"

	| elements |
"	self haltOnce."
	elements := self generateElements.	
	self list getItems = elements ifTrue: [ ^ self ].
	"first reset the items to make sure we don't interfere with the display block"
	self list items: #().
	self list
		displayBlock: [ :eyeElement :index | 
			self labelFor: (elements at: index ifAbsent: [ InstanceVariableEyeElement host: nil ]) ].
	self list items: elements.
	
	"handle when last item of list is removed"
	(self list selectedIndex > self list getItems size) ifTrue: [ self list setSelectedIndex: self list getItems size  ].
	
	"handle when selected dictionary key is removed"
	self list setSelectedIndex: self list selectedIndex.
	
	self list menu: [ :aMenu | self inspectionMenu: aMenu ]