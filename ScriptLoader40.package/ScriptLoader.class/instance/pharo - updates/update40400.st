update40400
	"self new update40400"
	self withUpdateLog: '14571 Add String class>>#loremIpsum constant and dynamically sized filler text feature  
	https://pharo.fogbugz.com/f/cases/14571'.
	self loadTogether: self script400 merge: false.
	self flushCaches.
