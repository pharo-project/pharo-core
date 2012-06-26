instance creation
inspect: anObject 
	"Answer an instance of me to provide an inspector for anObject."
	
	"We call basicNew to avoid a premature initialization; the instance method 
	inspect: anObject will do a self initialize."

	^self basicNew inspect: anObject