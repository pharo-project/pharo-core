testTraitUsersAfterMetaclassReshape

	aClass := self make: [ :builder | 
		builder
			name: self aClassName ].

	anotherClass := self make: [ :builder | 
		builder
			name: self anotherClassName;
			superclass: aClass;
			traitComposition: TOne;
			classTraitComposition: TOne classTrait + TTwo ].
	
	
	self assert: TOne users asArray            equals: { anotherClass }.
	self assert: TOne classTrait users asArray equals: { anotherClass class }.
	self assert: TTwo users asArray            equals: { anotherClass class }.
	self assert: TTwo classTrait users asArray equals: { }.
	
	self deny: (aClass canUnderstand: #one).
	self assert: (anotherClass canUnderstand: #one).
	self deny: (aClass class canUnderstand: #two).
	self assert: (anotherClass class canUnderstand: #two).
	
	"reshape the super class"
	aClass := self make: [ :builder | 
		builder
			name: self aClassName;
			classSlots: #( x y z ) ].
		
	
	self assert: TOne users asArray            equals: { anotherClass }.
	self assert: TOne classTrait users asArray equals: { anotherClass class }.
	self assert: TTwo users asArray            equals: { anotherClass class }.
	self assert: TTwo classTrait users asArray equals: { }.
	
	self deny: (aClass canUnderstand: #one).
	self assert: (anotherClass canUnderstand: #one).
	self deny: (aClass class canUnderstand: #two).
	self assert: (anotherClass class canUnderstand: #two).

