testExecute
	| packageName mcPackage workingCopy httpRep |
	"We do not really test execute since the method raises a modal window. Instead, we test the method execute calls"
	packageName := 'ConfigurationOfMetacello_Command_Tests'.
	mcPackage := MCPackage named: packageName.
	workingCopy := mcPackage workingCopy.
	workingCopy repositoryGroup 
		addRepository: (httpRep := MCHttpRepository location:  'http://www.squeaksource.com/Metacello_Command_Tests' user: 'hello' password: 'world').

	[(MBAddDescriptionCommand target: self for: nil) appendDescription: 'HelloWorld' to: '1.0-baseline']
		valueSupplyingAnswers: 
			{{ 'You need to say where your project will be saved.
No HTTP repository associated. Do you want to add http://www.squeaksource.com/Metacello_Command_Tests' . true} }.

	workingCopy repositoryGroup removeRepository: httpRep