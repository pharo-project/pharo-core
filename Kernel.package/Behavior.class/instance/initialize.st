initialize-release
initialize
	"moved here from the class side's #new"
	super initialize.
	superclass := Object.
	"no longer sending any messages, some of them crash the VM"
	methodDict := self emptyMethodDictionary.
	format := Object format