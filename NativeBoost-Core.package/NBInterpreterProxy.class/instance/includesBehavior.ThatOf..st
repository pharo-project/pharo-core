proxy functions
includesBehavior: aClass ThatOf: aSuperclass
	"Return the equivalent of 
		aClass includesBehavior: aSuperclass.
	Note: written for efficiency and better inlining (only 1 temp)"
	^ self simpleCall
