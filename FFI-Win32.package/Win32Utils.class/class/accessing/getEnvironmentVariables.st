getEnvironmentVariables
	"Win32Utils getEnvironmentVariables"

	| externalData strs |
	externalData := self apiGetEnvironmentStrings.
	strs := externalData fromCStrings.
	self apiFreeEnvironmentStrings: externalData.
	^strs
