conversion
asMCMethodDefinition
   "Creates a MCMethodDefinition from the receiver"
   
   ^ MCMethodDefinition
		className: self theNonMetaParentName
 	      classIsMeta: self isMetaSide
		selector: self selector
		category: self protocol
		timeStamp: self stamp
		source: self sourceCode