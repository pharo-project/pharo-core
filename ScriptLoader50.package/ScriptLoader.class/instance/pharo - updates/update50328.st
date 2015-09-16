update50328
	"self new update50328"
	self withUpdateLog: '16581 one-shot links
	https://pharo.fogbugz.com/f/cases/16581

16582 Reflectivity: #instead for sequence nodes
	https://pharo.fogbugz.com/f/cases/16582

15260 WriteStream on new string
	https://pharo.fogbugz.com/f/cases/15260

16578 Add an id to Session
	https://pharo.fogbugz.com/f/cases/16578'.
	self loadTogether: self script50328 merge: false.
	self flushCaches.
