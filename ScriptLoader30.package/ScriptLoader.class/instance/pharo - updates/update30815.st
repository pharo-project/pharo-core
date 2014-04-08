update30815
	"self new update30815"
	self withUpdateLog: '13080 Shout does not recognize doubled vertical bar || as a binary selector
	https://pharo.fogbugz.com/f/cases/13080

12178 Extended class shown twice in Browser. 
	https://pharo.fogbugz.com/f/cases/12178

13007 Cannot integrate a slice with monticello (red square in the UI)
	https://pharo.fogbugz.com/f/cases/13007

13108 MNU in class menu
	https://pharo.fogbugz.com/f/cases/13108

'.
	self loadTogether: self script468 merge: false.
	self flushCaches.
