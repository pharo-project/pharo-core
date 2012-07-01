processing
generateSpec
	| spec |
	spec := OrderedCollection new 
		addAll: (addClassDescription generateSpec);
		addAll: (addInstVarDescriptions gather: #generateSpec);
		addAll: (addMethodDescriptions gather: #generateSpec);
		addAll: ((addIntoMethodDescriptions sort: [:a :b | a order < b order ]) gather: #generateSpec);
		add: #theMetaClass;
		addAll: specDescription generate;
		add: #theNonMetaClass;
		yourself.
		
	^ spec addAll: {#theMetaClass. #compileWithoutReturn:classified:. 'generatingSpec
	
	^ ', (spec copy addFirst: #model;yourself) asArray storeString. 'generating'};yourself