instance creation
new
	"Override new to trigger an error, since we want to use specialized methods to create basic and higher-level events."

	^self error: 'Instances can only be created using specialized instance creation methods.'