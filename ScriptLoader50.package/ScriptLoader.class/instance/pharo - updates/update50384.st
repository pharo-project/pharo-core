update50384
	"self new update50384"
	self withUpdateLog: '16759 update comment for #ifNotEmpty:
	https://pharo.fogbugz.com/f/cases/16759

16779 Reflectivity: fix to be able to invalidate all method of package Kernel
	https://pharo.fogbugz.com/f/cases/16779

16778 Entering a number then $ in the Playground throws a SubscriptOutOfBounds: error 
	https://pharo.fogbugz.com/f/cases/16778

16763 Add #isUsed to Manifest classes
	https://pharo.fogbugz.com/f/cases/16763

16764 Lost argument names in Rubric, resized example
	https://pharo.fogbugz.com/f/cases/16764'.
	self loadTogether: self script50384 merge: false.
	self loadConfiguration: 'Rubric' version: '2.1'.self flushCaches.
