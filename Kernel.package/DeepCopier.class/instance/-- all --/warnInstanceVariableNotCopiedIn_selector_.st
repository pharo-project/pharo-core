warnInstanceVariableNotCopiedIn: aClass selector: aSelector
	"Warn the user to update veryDeepCopyWith: or veryDeepInner:"

	self inform: ('An instance variable was added to to class ', aClass name, ',\and it is not copied in the method ', aSelector, '.\Please rewrite it to handle all instance variables.\See DeepCopier class comment.') withCRs.
	
	(Smalltalk respondsTo: #tools) ifTrue: [ 
		Smalltalk tools browser
			fullOnClass: aClass 
			selector: aSelector ]