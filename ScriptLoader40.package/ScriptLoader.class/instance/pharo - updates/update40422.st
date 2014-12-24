update40422
	"self new update40422"
	self withUpdateLog: '14646 Allow to execute class methods marked with <example> pragma
	https://pharo.fogbugz.com/f/cases/14646

14649 defaultEventDispatcher should be one class variable
	https://pharo.fogbugz.com/f/cases/14649

14629 Morphic click event and modal windows get stuck
	https://pharo.fogbugz.com/f/cases/14629

14647 Allow to mark a class method with <script> pragma to make it executable from Nautilus by just clicking
	https://pharo.fogbugz.com/f/cases/14647'.
	self loadTogether: self script422 merge: false.
	self flushCaches.
