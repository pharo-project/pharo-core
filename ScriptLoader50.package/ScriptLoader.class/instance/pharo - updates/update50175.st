update50175
	"self new update50175"
	self withUpdateLog: '15991 System settings search is slow
	https://pharo.fogbugz.com/f/cases/15991

14442 ToolsTest package should be Tools-Test
	https://pharo.fogbugz.com/f/cases/14442

3893 There is no way to revert a change in a patch browser nor in Plymorph diff
	https://pharo.fogbugz.com/f/cases/3893

15993 Temporary variable pos is only written in NumberParser>>#nextInteger
	https://pharo.fogbugz.com/f/cases/15993'.
	self loadTogether: self script50175 merge: false.
	self flushCaches.
