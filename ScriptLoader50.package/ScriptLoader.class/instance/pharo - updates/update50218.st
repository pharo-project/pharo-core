update50218
	"self new update50218"
	self withUpdateLog: '16137 PluggableButtonMorph needs #on:getState:action:label:menu: for backwards compatibility
	https://pharo.fogbugz.com/f/cases/16137'.
	self loadTogether: self script50218 merge: false.
	self flushCaches.
