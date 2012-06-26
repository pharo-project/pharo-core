ansi protocol
< comparand
	"comparand conforms to protocol DateAndTime,
	or can be converted into something that conforms."
	| lticks rticks comparandAsDateAndTime |
	comparandAsDateAndTime := comparand asDateAndTime.
	offset = comparandAsDateAndTime offset
		ifTrue: [lticks := self ticks.
			rticks := comparandAsDateAndTime ticks]
		ifFalse: [lticks := self asUTC ticks.
			rticks := comparandAsDateAndTime asUTC ticks].
	^ lticks first < rticks first
		or: [lticks first > rticks first
				ifTrue: [false]
				ifFalse: [lticks second < rticks second
						or: [lticks second > rticks second
								ifTrue: [false]
								ifFalse: [lticks third < rticks third]]]]
