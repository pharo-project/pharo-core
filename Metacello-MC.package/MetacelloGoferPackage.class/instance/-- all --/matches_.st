matches: aLoadableReference
    "does Monticello-style #versionInfoFromVersionNamed: matching"

    | pFilename refFilename char |
    ((pFilename := self packageFilename) == nil or: [ self name = self packageFilename ])
        ifTrue: [ ^ super matches: aLoadableReference ].
    aLoadableReference name = pFilename
        ifTrue: [ ^ true ].
    (aLoadableReference name beginsWith: pFilename)
        ifFalse: [ ^ false ].
refFilename := aLoadableReference metacelloPackageNameWithBranch at: 2.
    refFilename = pFilename
        ifTrue: [ ^ true ].
    pFilename size < refFilename size
        ifTrue: [ 
            (refFilename beginsWith: pFilename)
                ifFalse: [ ^ false ].
            (char := pFilename at: pFilename size) ~= $-
                ifTrue: [ char := refFilename at: pFilename size + 1 ] ]
        ifFalse: [ 
            (pFilename beginsWith: refFilename)
                ifFalse: [ ^ false ].
            (char := refFilename at: refFilename size) ~= $-
                ifTrue: [ char := pFilename at: refFilename size + 1 ] ].
    ^ char = $. or: [ char = $- ]