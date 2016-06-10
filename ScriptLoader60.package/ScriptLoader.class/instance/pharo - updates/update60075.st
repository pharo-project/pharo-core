update60075
	"self new update60075"
	self withUpdateLog: '18462 FileReference>>newTempFilePrefix:suffix:
	https://pharo.fogbugz.com/f/cases/18462

18458 fall back debug menu in FileLists preview pane context menu
	https://pharo.fogbugz.com/f/cases/18458

18456 Add readOnlyQueue to SourceFilesArray
	https://pharo.fogbugz.com/f/cases/18456'.
	self loadTogether: self script60075 merge: false.
	
SourceFiles close; initialize; ensureOpen .
	self flushCaches.
