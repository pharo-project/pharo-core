updateList
	"update the list of elements displayed according to the new object"
	
	|elements|

	elements := self generateElements.
	"first reset the items to make sure we don't interfere with the display block"
	self list items: #().
	self list displayBlock: [ :e :index | 
		(elements at: index ifAbsent: [ InstanceVariableEyeElement host: nil ]) label ].
	self list items: elements.
	
	self list menu: [ :aMenu | 
		self inspectionMenu: aMenu ].
	