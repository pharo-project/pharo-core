truncation
rounded
	"Answer a date and time to the nearest whole second"

	^ NanosInSecond / 2 >= self nanoSecond abs
		ifTrue: [self species fromSeconds: self asSeconds]
		ifFalse: [self species fromSeconds: self asSeconds + 1]