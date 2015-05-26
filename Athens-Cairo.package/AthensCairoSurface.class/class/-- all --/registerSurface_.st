registerSurface: anAthensCairoSurface
	"register the cairo surface with surface plugin,
	so, it can be used directly by bitblt operations.
	
	Answer an id and unique session object
	 "
	| id |
	self checkSession.
	
	id := ByteArray new: 8 "we need 4, but put some more (NBExternalType sizeOf: #int)".

	(self ioRegisterSurface: anAthensCairoSurface handle value dispatch: dispatch surfaceId: id)
		ifFalse: [ self error: 'Unable to register surface with SurfacePlugin'].
	
	id := id nbLongAt: 1.
	
	^ id