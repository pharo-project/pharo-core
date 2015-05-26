isObsolete
	"Return true if the receiver is obsolete."
	^self propertyValueAt: #obsolete ifAbsent: false