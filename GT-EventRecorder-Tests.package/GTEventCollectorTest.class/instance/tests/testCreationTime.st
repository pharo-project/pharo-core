testCreationTime
	| collector2 |
	1 nanoSecond wait.
	collector2 := GTEventCollector new.
	self assert: collector creationTime < collector2 creationTime.
	self deny: collector creationTime > collector2 creationTime.
	self deny: collector creationTime = collector2 creationTime.