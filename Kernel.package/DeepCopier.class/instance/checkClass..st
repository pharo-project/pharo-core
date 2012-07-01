like fullCopy
checkClass: aClass
	| meth |
	"Check that no indexes of instance vars have changed in certain classes.  If you get an error in this method, an implementation of veryDeepCopyWith: needs to be updated.  The idea is to catch a change while it is still in the system of the programmer who made it."

	self checkBasicClasses.	"Unlikely, but important to catch when it does happen."

	"Every class that implements veryDeepInner: must copy all its inst vars.  Danger is that a user will add a new instance variable and forget to copy it.  So check that the last one is mentioned in the copy method."
	(aClass includesSelector: #veryDeepInner:) ifTrue: [ 
		((aClass compiledMethodAt: #veryDeepInner:) writesField: aClass instSize) ifFalse: [
			aClass instSize > 0 ifTrue: [
				self warnIverNotCopiedIn: aClass sel: #veryDeepInner:]]].
	(aClass includesSelector: #veryDeepCopyWith:) ifTrue: [
		meth := aClass compiledMethodAt: #veryDeepCopyWith:.
		(meth size > 20) & (meth literals includes: #veryDeepCopyWith:) not ifTrue: [
			(meth writesField: aClass instSize) ifFalse: [
				self warnIverNotCopiedIn: aClass sel: #veryDeepCopyWith:]]].
