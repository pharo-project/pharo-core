size
	"Use #associationsDo: , to count associations with non-nil keys"
	| count |
	count := 0.
	self protected: [
		valueDictionary associationsDo: [:ass | count := count +1 ]].
	^ count