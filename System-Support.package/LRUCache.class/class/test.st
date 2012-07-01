testing
test
	" 
	LRUCache test 
	"
	| c |
	c := LRUCache
				size: 5
				factory: [:key | key * 2].
	c at: 1.
	c at: 2.
	c at: 3.
	c at: 4.
	c at: 1.
	c at: 5.
	c at: 6.
	c at: 7.
	c at: 8.
	c at: 1.
	^ c