replaceClassVariable: newVar 
	"replace an exisiting class var with the same name. used to wrap class vars for MetaLinks"
	
	(self classPool includesKey: newVar key) ifFalse: [ ^self ].
	self classPool removeKey: newVar key.
	self classPool add: newVar.