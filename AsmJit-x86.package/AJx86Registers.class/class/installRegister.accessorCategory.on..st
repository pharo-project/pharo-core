method compilation
installRegister: register accessorCategory: registerAccessorsCategory on: aClass
	
	aClass 
		compile: (String	streamContents: [ :s | 
			s nextPutAll: register name; crtab.
			self printRegister: register descriptionOn: s.
			s crtab; nextPutAll: '^ '; nextPutAll: register name ])
		classified: registerAccessorsCategory 