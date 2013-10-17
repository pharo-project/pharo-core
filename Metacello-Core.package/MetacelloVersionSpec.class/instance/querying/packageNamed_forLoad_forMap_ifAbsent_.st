packageNamed: aString forLoad: forLoad forMap: map ifAbsent: absentBlock
    | importSpec |
    ^ map
        at: aString
        ifAbsent: [ 
            (forLoad and: [ self import notNil ])
                ifTrue: [ 
                    "expect the 'missing' name to be satisfied within context of imported project"
                    importSpec := (map at: self import ifAbsent: absentBlock) copy
                        name: aString;
                        mergeImportLoads: {aString};
                        yourself.
                    importSpec projectReference name: aString.
                    importSpec ]
                ifFalse: [ 
                    (aString = 'default' or: [ aString = 'ALL' ])
                        ifTrue: [ 
                            self project groupSpec
                                name: aString;
                                includes: self packageNames;
                                yourself ]
                        ifFalse: [ absentBlock value ] ] ]