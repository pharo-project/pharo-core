pharo - updates
update20578
	"self new update20578"
	self withUpdateLog: 'Issue 7617:	make NBExternalEnumeration a subclass of SharedPool again
	https://code.google.com/p/pharo/issues/detail?id=7617
	
Issue 7605:	moving a method into an extension does not notify the monticello package
	https://code.google.com/p/pharo/issues/detail?id=7605
	
Issue 7590:	Kill MC History Data (>8MB of the image...)
	https://code.google.com/p/pharo/issues/detail?id=7590
	
Issue 7553:	tons [delaySemaphore wait] process alive in image
	https://code.google.com/p/pharo/issues/detail?id=7553
	(this one for check if it is fixed)
'.
	self loadTogether: self script553 merge: false.
	MCVersionInfo allInstances do: [ :each | each instVarNamed: 'ancestors' put: nil ].
(Process allInstances 
	select: [ :p |  | ctx |
		ctx := p suspendedContext.
		ctx notNil and: [ ctx method  == (Delay>>#wait)
			and: [ ctx sender sender sender method selector == #secondsWhenClockTicks  ] ] ])
	do: #terminate.
	self flushCaches.
