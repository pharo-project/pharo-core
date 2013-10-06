createVersionForBlessing: blessingSelector
	"blessingSelector = #release or #development"
	 
	| existingVersions msg initialAnswer newVersionNumber selectorName stream dependentPackages mcWorkingCopy |
	existingVersions := self configurationClass methods select: [:cm | cm selector beginsWith: 'version'].
	existingVersions := (existingVersions collect: [:m | m pragmas first argumentAt: 1]) asSortedCollection.
	
	msg := ''.
	existingVersions size > 4
		ifTrue: [ 
			msg := 'Last 4 versions: ', 
			(existingVersions copyFrom: (existingVersions size - 4) to: existingVersions size)
				 asArray printString, String cr ].
	
	existingVersions size > 0
		ifTrue: [ initialAnswer := existingVersions last, '.1' ]
		ifFalse: [ initialAnswer := '1.0' ].
	
	newVersionNumber := UIManager default request: msg initialAnswer: initialAnswer.
	newVersionNumber ifNil: [ ^ self ].

	selectorName := newVersionNumber copyWithoutAll: '.-'.
	stream := WriteStream on: String new.
	stream nextPutAll: 'version'.
	stream nextPutAll: selectorName.
	stream nextPutAll: ': spec 
        <version: '''.
	stream nextPutAll: newVersionNumber.
	stream nextPutAll: ''' imports: #(''', self lastBaseLine,''')>

        spec for: #common do: [
                spec blessing: ',blessingSelector printString,'.
'.

	self dependentPackages 
		do: [:pName | 
				stream nextPutAll: '			spec package: ''', pName, ''' with: '''.
							
				mcWorkingCopy := (MCPackage named: pName) workingCopy.
				mcWorkingCopy needsSaving ifTrue: [ self inform: 'The configuration you want to save depends on the package ', pName, '. You first need to save this package in order to create the version'. ^ self ].
				stream nextPutAll: (mcWorkingCopy ancestry ancestors first name).
			
				stream nextPutAll: '''.', String cr ].
	stream nextPutAll: '                ].'.

	self configurationClass compile: stream contents classified: 'versions'.

