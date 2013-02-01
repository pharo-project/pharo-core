accessing
all
	^ Codes values collect: [ :each| self classPool at: each ]