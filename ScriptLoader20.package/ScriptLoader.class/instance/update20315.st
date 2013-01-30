pharo - updates
update20315
	"self new update20315"
	self withUpdateLog: 'Issue 6747:	Unicode class has wrong CaseMapping
	http://code.google.com/p/pharo/issues/detail?id=6747
	
Issue 6696:	Gofer Repository Improvements
	http://code.google.com/p/pharo/issues/detail?id=6696
	
Issue 5856:	Add possiblity to skip a test
	http://code.google.com/p/pharo/issues/detail?id=5856'.
	self loadTogether: self script300 merge: false.
	UIManager default informUserDuring: [ :bar| | result |
    bar label: 'Downloading Unicode case mappings data'.
	(result := ZnEasy get: 'http://www.unicode.org/Public/UNIDATA/CaseFolding.txt') isSuccess
			ifFalse: [ ^ self error: 'Download failed' ].
	bar label: 'Updating Case Mappings'.
	Unicode parseCaseMappingFrom: result contents readStream ].
	self flushCaches.
