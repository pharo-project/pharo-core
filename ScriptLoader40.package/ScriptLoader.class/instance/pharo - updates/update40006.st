update40006
	"self new update40006"
	self withUpdateLog: '13255 PNGReadWriter fails to read some .png format and do not always correctly read transparency back
	https://pharo.fogbugz.com/f/cases/13255

13279 Add MetaRepoForPharo30 as one of the switchable Repositories to ConfigBrowser
	https://pharo.fogbugz.com/f/cases/13279

'.
	self loadTogether: self script5 merge: false.
	self flushCaches.
