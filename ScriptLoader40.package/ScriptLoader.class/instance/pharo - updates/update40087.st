update40087
	"self new update40087"
	self withUpdateLog: '13560 remove DSA seed generation from sound input
	https://pharo.fogbugz.com/f/cases/13560

13555 IconicListItem should be packaged in Widgets-Basic
	https://pharo.fogbugz.com/f/cases/13555

13556 ImagePreviewMorph could be packaged close to AlphaImageMorph
	https://pharo.fogbugz.com/f/cases/13556

13559 ControlButtonMorph and PluggableButtonMorph could be moved to Widgets-Base
	https://pharo.fogbugz.com/f/cases/13559

13557 Github zip download does not check for the existence of file with the same name
	https://pharo.fogbugz.com/f/cases/13557

'.
	self loadTogether: self script87 merge: false.
	self flushCaches.
self cleanRepositories.
