update60256
	"self new update60256"
	self withUpdateLog: '18901 Highlight message send selector on mouse over
	https://pharo.fogbugz.com/f/cases/18901'.
	self loadTogether: self script60256 merge: false.
	
RubAbstractTextArea highlightMessageSend: true.
	self flushCaches.
