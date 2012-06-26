accessing
removeDefinedMethod: aCompiledMethod forClass: aClass 
	"Remove the method to the receiver as a defined method."
	
	self flag: #cyrille. "no need for this method since we have removeMethod and normally 
	given a compiledMethod and a package we know if it is extending or not the package."
	"CD: Indeed, I changed the code where this method was called (removeClass:) , and it does not raise more errors when running the tests.There is no longer senders of this method"
	aClass isMeta
		ifTrue: [(metaclassDefinedSelectors 
			at: aClass theNonMetaClass name  
			ifAbsent: [^nil]) remove: aCompiledMethod selector]
		ifFalse: [(classDefinedSelectors 
			at: aClass name 
			ifAbsent: [^nil]) remove: aCompiledMethod selector].	
	^ aCompiledMethod.