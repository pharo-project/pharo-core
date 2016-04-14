install
	| ast link |
	links := OrderedCollection new.
	ast := self example method ast.
	link := MetaLink new 
		metaObject: self; 
		selector: #onLinkNode:arguments:;
		arguments: #( node arguments );
		yourself.
	links add: link.
	ast link: link.
	ast variableWriteNodes do: [ :node | 
		(self example afterArguments includes: node name) ifTrue: [ 
			link := MetaLink new 
				metaObject: self; 
				selector: #onLinkNode:at:put:;
				control: #after;
				arguments: #( node name newValue );
				yourself.
			links add: link.
			node link: link ] ]