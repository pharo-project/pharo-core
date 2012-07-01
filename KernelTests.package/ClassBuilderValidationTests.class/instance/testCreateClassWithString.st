testing
testCreateClassWithString

	self assert: ( Object subclass: 'Test1'
			instanceVariableNames: ''
			classVariableNames: ''
			poolDictionaries: ''
			category: 'Kernel-Tests-ClassBuilder' ) equals: nil.