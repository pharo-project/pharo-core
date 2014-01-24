pointSizeList

	pointSizeList ifNotNil: [ ^ pointSize ].
	^ pointSizeList := (1 to: 256) collect: [ :each | each asString padLeftTo: 3 ].