testSurfacePluginCallbacks

	| surface wb hb db mb ptr |
	
	surface := AthensCairoSurface extent: 800@800.
	
	wb := ByteArray new: 4.
	hb := ByteArray new: 4.
	db := ByteArray new: 4.
	mb := ByteArray new: 4.
	
	self testGetSurfaceFormat: surface handle width: wb height: hb depth: db isMSB: mb.

	self assert: (surface width = (wb nbUlongAt: 1)).
	self assert: (surface height = (hb nbUlongAt: 1)).	
	self assert: (32 = (db nbUlongAt: 1)).
	self assert: (0 = (mb nbUlongAt: 1)).
	
	ptr := self testLockSurface: surface handle pitch:  wb x: 0  y: 0  w:  100 h: 100.
	self assert: (wb nbUlongAt: 1) = surface stride.
	self assert: ptr = surface getDataPtr