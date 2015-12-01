testCreationTime
	| collector2 |
	collector2 := GTEventCollector new.
	self assert: collector creationTime < collector2 creationTime.
	self deny: collector creationTime > collector2 creationTime.
	self deny: collector creationTime = collector2 creationTime.