label
	<api: #inspect>
	
	iconHolder contents
		ifNil: [ ^ labelHolder contents ]
		ifNotNil: [ :icon |
			^ self buildLabel: labelHolder contents withIcon: icon ]