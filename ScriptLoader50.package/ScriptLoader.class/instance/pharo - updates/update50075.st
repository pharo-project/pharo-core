update50075
	"self new update50075"
	self withUpdateLog: '15630 Remove duplicate shortcut definition (TextEditors actionMap vs KM)
	https://pharo.fogbugz.com/f/cases/15630

15637 Fixed nautilus tests
	https://pharo.fogbugz.com/f/cases/15637

15633 FT2Handle needs to cleanUp on exit, not on startup
	https://pharo.fogbugz.com/f/cases/15633

15631 Change PluggableTextMorph in comment pane into a RubScrolledTextMorph via RubScrolledTextModel
	https://pharo.fogbugz.com/f/cases/15631

'.
	self loadTogether: self script50075 merge: false.
	self flushCaches.
self cleanRepositories.
