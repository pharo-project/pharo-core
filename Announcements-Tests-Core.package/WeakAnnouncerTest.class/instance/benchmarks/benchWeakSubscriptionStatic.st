benchWeakSubscriptionStatic

	" run me to see how cheap object creation is (compared to #benchWeakSubscriptionDynamic ) "
	| object ann |
	
	object := Object new.
	ann := Announcer new.
	
	^ [
		1000 timesRepeat: [ (ann weak on: Announcement send: #value to: object)  ].
	] timeToRun