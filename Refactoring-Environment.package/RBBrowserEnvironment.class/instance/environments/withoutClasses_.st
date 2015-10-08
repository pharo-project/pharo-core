withoutClasses: aListOfClass
	"Build the same environment without classes given as parameter"
	.
	^ self & ((RBClassEnvironment onEnvironment: self classes: aListOfClass) not)