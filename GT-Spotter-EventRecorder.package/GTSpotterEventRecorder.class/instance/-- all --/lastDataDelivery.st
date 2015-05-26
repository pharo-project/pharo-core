lastDataDelivery
	UIManager default informUserDuring: [ :bar |
	  	[ self deliverAndSignalProgress: true ]
	    on: HTTPProgress 
	    do: [ :progress |  
			progress isEmpty ifFalse: [ bar current: progress percentage ].
	      progress resume ] ]
