mergeSpec: anotherSpec
    | newSpec map anotherRepositories |
    newSpec := super mergeSpec: anotherSpec.
    map := anotherSpec mergeMap.
    (anotherRepositories := map at: #'repositories') ~~ nil
        ifTrue: [ 
            newSpec
                repositories:
                    (self getRepositories == nil
                        ifTrue: [ anotherRepositories ]
                        ifFalse: [ self repositories mergeSpec: anotherRepositories ]) ].
    ^ newSpec