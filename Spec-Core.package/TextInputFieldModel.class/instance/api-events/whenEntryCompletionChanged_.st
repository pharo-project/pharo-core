whenEntryCompletionChanged: aBlock
	<api: #event>
	"aBlock will be performed when entryCompletion changed"
	
	entryCompletion whenChangedDo: aBlock