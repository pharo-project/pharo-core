initialization
setClass: aClass
	super setClass: aClass.
	aClass allInstVarNames 
		keysAndValuesDo: [ :index :name | self add: (RBInstanceBinding name: name index: index) ]