browseAllImplementorsOf: selector localTo: aClass 
	"Create and schedule a message browser on each method in or below the  given class that implements the message whose selector is the argument, selector.  
	For example,  
		SystemNavigation new browseAllImplementorsOf: #at:put: localTo: Dictionary."
		
	aClass ifNil: [^ self inform: 'no class selected'].
	^ self
		browseMessageList: ((self allImplementorsOf: selector localTo: aClass)
				collect: [:methRef | methRef actualClass name , ' ' , methRef selector])
		name: 'Implementors of ' , selector , ' local to ' , aClass name