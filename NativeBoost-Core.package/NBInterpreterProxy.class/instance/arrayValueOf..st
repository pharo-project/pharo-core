proxy functions
arrayValueOf: oop
	"Return the address of first indexable field of resulting array object, or fail if the instance variable does not contain an indexable bytes or words object."

	^ self simpleCall
