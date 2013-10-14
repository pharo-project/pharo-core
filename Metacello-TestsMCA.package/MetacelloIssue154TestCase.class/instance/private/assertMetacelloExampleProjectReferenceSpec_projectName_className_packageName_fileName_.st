assertMetacelloExampleProjectReferenceSpec: projectReferenceSpec projectName: projectName className: className packageName: packageName fileName: fileName
    | projectSpec projectPackage |
    self assert: projectReferenceSpec projectName = projectName.
    self assert: projectReferenceSpec versionString = '1.0'.
    projectSpec := projectReferenceSpec referencedSpec.
    self assert: projectSpec name = projectName.
    self assert: projectSpec versionString = '1.0'.
    self assert: projectSpec className = className.
    projectPackage := projectSpec projectPackage.
    projectPackage name ifNotNil: [ self assert: projectPackage name = className ].
    projectPackage file ifNotNil: [ self assert: projectPackage file = fileName ].
    self assert: (projectPackage repositoryDescriptions includes: 'dictionary://Metacello_Configuration_Test_Repository')