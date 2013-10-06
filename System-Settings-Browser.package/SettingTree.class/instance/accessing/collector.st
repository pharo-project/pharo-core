collector
	^ collector ifNil: [collector := PragmaCollector new]