testMaterializeVersions
	| versions notMaterializedEvents |
	checkedEvents := Set new.
	versions := Pragma allNamed: #spotterEventRecorderSerializedData in: self class.
	self assert: versions notEmpty.
	versions do: [ :eachPragma |
		self assertVersion: eachPragma selector ].
	self assert: checkedEvents notEmpty.
	notMaterializedEvents := GTSpotterRecorderEvent allSubclasses 
		removeAll: checkedEvents; 
		yourself.
	self 
		assert: notMaterializedEvents isEmpty
		description: [ 
			'Some events are not tested for backward compatibility.', String cr,
			'You should create new version using method #storeSerializedAnnouncementIntoMethod:.', String cr,
			'Do not override the existing serialized versions!'
		]