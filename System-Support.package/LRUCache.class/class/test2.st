testing
test2
	" 
	LRUCache test2.  
	Time millisecondsToRun:[LRUCache test2]. 
	MessageTally spyOn:[LRUCache test2].  
	"
	| c |
	c := LRUCache
				size: 600
				factory: [:key | key * 2].
	1
		to: 6000
		do: [:each | c at: each].
	^ c