example
	"self example"

	| oldSource newSource t1 t2 t3 ml mlb |
	oldSource := 'example1
	"This is the old version of the method"
	Transcript show: ''This is the old version of the method'' ;cr.'.

	newSource := 'example1
	"This is the new version of the method"
	Transcript show: ''This is the new version of the method'' ;cr.'.

	t1 := RGMethodDefinition
			realClass: MessageList class
			selector: #example.

	MessageList class compile: oldSource classified: 'example'.

	t2 := RGMethodDefinition 
			realClass: MessageList class
			selector: #example1.
		
	"here you can modify MessageList >> initialize to see the difference"
	MessageList class compile: newSource classified: 'example'.
		
	t3 := RGMethodDefinition
			realClass: MessageList class
			selector: #example1.

	ml := MessageList new
			addMethodReference: t1;
			addMethodReference: t2;
			addMethodReference: t3.

	mlb := MessageListBrowser byDateAscendingOn: ml.

	mlb open