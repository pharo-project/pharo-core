attributes
directory
	"Answer the path for the directory containing the Smalltalk virtual machine. Return the 	empty string if this primitive is not implemented."
	"SmalltalkImage current vmPath"

	^ self primVmPath asFileReference.
