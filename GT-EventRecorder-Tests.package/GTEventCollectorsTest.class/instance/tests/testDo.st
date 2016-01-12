testDo
	"Ensure that collectors are iterated according to creation time."
	| collector1 collector2 interatedCollectors |
	collector1 := GTEventCollector new.
	1 nanoSecond wait.
	collector2 := GTEventCollector new.
	self assert: collector1 creationTime < collector2 creationTime.
	collectors add: collector2.
	collectors add: collector1.
	interatedCollectors := OrderedCollection new.
	collectors do: [ :eachCollector | interatedCollectors addLast: eachCollector ].
	self assert: interatedCollectors size equals: 2.
	self assert: interatedCollectors first == collector1.
	self assert: interatedCollectors second == collector2.
	