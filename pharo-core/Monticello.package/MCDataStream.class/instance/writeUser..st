write and read
writeUser: anObject
    "Write the contents of an arbitrary User instance (and its devoted class)."
    " 7/29/96 tk"

	"If anObject is an instance of a unique user class, will lie and say it has a generic class"
    ^ anObject storeDataOn: self