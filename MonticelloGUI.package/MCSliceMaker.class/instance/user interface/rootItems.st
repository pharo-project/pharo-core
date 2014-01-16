rootItems
	^ (MCWorkingCopy allManagers sort: [ :a :b | 
		"sort putting modified packages first in the list"
		
		(a modified = b modified) 
			ifTrue: [ a package name <= b package name  ]
			ifFalse: [ a modified ]
		])