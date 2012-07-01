reporting
reportTinyBenchmarks: aStream
	tinyBenchmarksResult ifNil: [
		UIManager inform: 'Running the Benchmarks\will take a few seconds' withCRs.
		tinyBenchmarksResult := 0 tinyBenchmarks].
	self header: 'Tiny Benchmarks' on: aStream.
	aStream nextPutAll: tinyBenchmarksResult; cr