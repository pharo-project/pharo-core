*Ring-Core-Kernel
createCommentDefinition
	"Retrieves a RGCommentDefinition object based on the data of the receiver"
	
	^(RGFactory current createCommentDefinition)
		parentName: self commentClass name;
		content: self string;
		stamp: stamp;
		yourself
	