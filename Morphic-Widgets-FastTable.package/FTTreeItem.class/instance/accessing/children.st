children
	"I use a cache because my children can be call often."

	self flag: #TODO.	"Improve the cache."
	self flag: #TODO. "Allow to reset the cache if the items change."
	^ children ifNil: [ children := self calculateChildren ]