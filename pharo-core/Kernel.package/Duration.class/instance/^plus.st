ansi protocol
+ operand
  	"operand is a Duration"
	^ self class nanoSeconds: (self asNanoSeconds + operand asNanoSeconds)
 