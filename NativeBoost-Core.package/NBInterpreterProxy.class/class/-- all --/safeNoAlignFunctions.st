safeNoAlignFunctions

	"list of functions which is safe to call without stack alignment"
	
	^ #(
		minorVersion
		majorVersion
		failed
		primitiveMethod
		getStackPointer
		stackValue:
		primitiveFail
		nilObject
		trueObject
		falseObject
		methodArgumentCount
	)