testing
isObsolete
	"Return true if the receiver is obsolete"
	^thisClass == nil "Either no thisClass"
		or:[thisClass class ~~ self "or I am not the class of thisClass"
			or:[thisClass isObsolete]] "or my instance is obsolete"