apiGetMousePoint: aMacPoint
	<apicall: void 'GetMouse' (MacPoint*) module:'Carbon.framework'>
	^self externalCallFailed