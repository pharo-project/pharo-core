accessing
defaultGlobalSymbols

    ^ #(#Smalltalk #SourceFiles #Transcript #Undeclared #Display #TextConstants #ActiveWorld #ActiveHand #ActiveEvent #Sensor #Processor #ImageImports #SystemOrganization #World) select: [:each |  (Smalltalk globals includesKey: each)]
