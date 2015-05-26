browseClass
	"Browse the class of the selected item."

	^ Smalltalk tools browser
		fullOnClass: self selectedChangeWrapper actualClass
		selector: self selectedMessageName