submorphs-add/remove
actWhen
	"Answer when the receiver, probably being used as a button, should have its action triggered"

	^ self valueOfProperty: #actWhen ifAbsentPut: [#buttonDown]