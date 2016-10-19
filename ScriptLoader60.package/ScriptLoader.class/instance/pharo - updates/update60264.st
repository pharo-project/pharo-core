update60264
	"self new update60264"
	self withUpdateLog: '18657 Rendering text in athens is broken
	https://pharo.fogbugz.com/f/cases/18657

18616 FuzzyMatcher
	https://pharo.fogbugz.com/f/cases/18616'.
	self loadTogether: self script60264 merge: false.
	self loadConfiguration: 'Athens' version: '3.10'.
Author useAuthor: 'Postload' during: [
CairoGlyph rebuildFieldAccessors .
].
	self flushCaches.
