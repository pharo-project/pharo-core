isHeightCustom

	^ (self valueOfProperty: #brickGeometryHeightLogic ifAbsentPut: [ nil ]) isNotNil