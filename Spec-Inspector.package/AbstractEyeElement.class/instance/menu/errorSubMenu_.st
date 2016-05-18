errorSubMenu: aMenu
	"Add debug menu entries for the failing #errorPropertySelectors of this eye element"
	
	self hasError 
		ifFalse: [ ^ self ].
		
	aMenu addGroup: [ :aGroup |
		
		self withErrorsDo: [ :accessError :itemSelector |
			aGroup addItem: [ :anItem |
				anItem 
					name: 'Debug Accessing ', itemSelector printString, ' of ', self accessorCode ;
					icon: (Smalltalk ui icons iconNamed: #smallWarningIcon);
					action: [ [ self perform: itemSelector] fork ]]]]