updateList
	"update the list of elements displayed according to the new object"

	| elements |
	elements := self generateElements.	
	self list getItems = elements ifTrue: [ ^ self ].
	"first reset the items to make sure we don't interfere with the display block"
	self list items: #().
	self list
		displayBlock: [ :eyeElement :index | 
			self labelFor: (elements at: index ifAbsent: [ InstanceVariableEyeElement host: nil ]) ].
	self list items: elements.
	self list menu: [ :aMenu | self inspectionMenu: aMenu ]