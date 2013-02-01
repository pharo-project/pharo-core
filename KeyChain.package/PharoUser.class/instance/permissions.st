accessing
permissions

	^ permissions ifNil: [ permissions := PharoUserPermissions new ]