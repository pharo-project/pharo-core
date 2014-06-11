update30849
	"self new update30849"
	self withUpdateLog: '13321 findSubstringViaPrimitive: key in: body startingAt: start matchTable: matchTable do not rely to correct character in source.
	https://pharo.fogbugz.com/f/cases/13321

'.
	self loadTogether: self script111 merge: false.
	self flushCaches.
