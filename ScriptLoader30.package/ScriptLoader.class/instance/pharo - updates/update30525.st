update30525
	"self new update30525"
	self withUpdateLog: '- Issue: 12009 BitBlt current -> BitBlt
	https://pharo.fogbugz.com/f/cases/12009/BitBlt-current-BitBlt
	
- Issue: 12013: Zinc Character Encoding and Resource Meta update
	https://pharo.fogbugz.com/f/cases/12013/

- Issue: 12014 Extract History from Nautilus-History
	https://pharo.fogbugz.com/f/cases/12014/'.
	self loadTogether: self script180 merge: false.
	self flushCaches.
