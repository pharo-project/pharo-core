at: index ifAbsent: aBlockClosure 
	"Still used in changeRecordsFrom:className:isMeta:do:"

	^ files at: index ifAbsent: aBlockClosure