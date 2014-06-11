update40020
	"self new update40020"
	self withUpdateLog: '13320 Clean old condense sources/changes
	https://pharo.fogbugz.com/f/cases/13320

13321 findSubstringViaPrimitive: key in: body startingAt: start matchTable: matchTable do not rely to correct character in source.
	https://pharo.fogbugz.com/f/cases/13321

'.
	self loadTogether: self script20 merge: false.
	self flushCaches.
