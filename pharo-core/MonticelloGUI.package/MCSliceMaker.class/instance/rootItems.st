user interface
rootItems
	^ (MCWorkingCopy allManagers select: [ :each | each modified ] )