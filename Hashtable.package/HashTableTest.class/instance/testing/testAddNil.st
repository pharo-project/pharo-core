testAddNil
	self deny: (table includesKey: nil).
	table at: nil put: 'nil'.
	self assert:(table at: nil) = 'nil'.
	
	self assert: (table includesKey: nil).
	
	table at: nil put: 'ok'.
	self assert:(table at: nil) = 'ok'.
	
	table removeKey: nil.
	self deny: (table includesKey: nil).