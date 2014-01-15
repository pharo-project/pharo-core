update30697
	"self new update30697"
	self withUpdateLog: '12589 Nautilus: Package file-outs are empty
	https://pharo.fogbugz.com/f/cases/12589
	
12625 toggling hierarchy/flat shows wrong package and hides selected class
	https://pharo.fogbugz.com/f/cases/12625
	
12645 Remove Athens-PangoCairo from the image
	https://pharo.fogbugz.com/f/cases/12645
	
12652 MethodClassifier wrong values
	https://pharo.fogbugz.com/f/cases/12652
	'.
	self loadTogether: self script350 merge: false.
	ScriptLoader new deletePackage: 'Athens-PangoCairo'.
	self flushCaches.
