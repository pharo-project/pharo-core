serialize/materialize
materializePostInstance: aTrait with: aDecoder

	| classTrait category name environment |
	classTrait := aDecoder nextEncodedReference.
	category := aDecoder nextEncodedReference.
	name := aDecoder nextEncodedReference.
	environment := aDecoder nextEncodedReference.
	
	aTrait 
		initialize;
		name: name;
		basicCategory: category asSymbol;
		classTrait: classTrait;
		environment: environment.
	
	classTrait baseTrait: aTrait.