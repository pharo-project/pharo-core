private
runPackagesTestsNotifying: aBoolean

	self selectedPackages
		ifNotNil: [:packages || classes label |
			packages size > 1
				ifTrue: [ label := 'Packages: ' ]
				ifFalse: [ label := 'Package: ' ].
			classes := packages gather: [:package | package definedClasses ].
			classes := classes select: [:class | class inheritsFrom: TestCase ].
			self runClassTests: classes notifying: false.
			aBoolean
				ifTrue: [ 
					| color |
					(classes anySatisfy:[:e  | e hasPassedTest ]) ifTrue: [ color :=  Color green ].
					(classes anySatisfy:[:e  | e hasFailedTest ]) ifTrue: [ color :=  Color yellow ].
					(classes anySatisfy:[:e  | e hasErrorTest ]) ifTrue: [ color :=  Color red ].
					self 
						notifyTitle: 'Test Finished'
						contents: label,((packages collect: #name) joinUsing: ', ')
						color: color ]].