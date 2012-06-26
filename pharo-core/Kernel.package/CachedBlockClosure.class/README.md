I'm a BlockClosure with an added instance variable for storing the once upon a time result of evaluating myself when I was simple BlockClosure. This is triggered by sending #once to a normal BlockClosure. Future sends of once will simply return this value rather than evaluate myself. When sent value, I revert back to a BlockClosure.  Originally by Travis Griggs, from whom we copy this idea with thanks.

Instance Variables
	cachedValue	<Object>

cachedValue
	- result of having sent value to myself when i was just a BlockClosure