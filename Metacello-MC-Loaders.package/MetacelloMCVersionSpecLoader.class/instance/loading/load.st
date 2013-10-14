load
    | mcLoader |
    packages := Dictionary new.
    self resolveToLoadableSpecs.
    mcLoader := self loader.
    packages values
        do: [ :pkg | 
            pkg ensureLoadedForDevelopmentUsing: mcLoader.
            mcLoader ignoreImage
                ifFalse: [ 
                    (pkg compareCurrentVersion: self operator targetVersionStatus: #(#'allLoadedToSpec') using: mcLoader)
                        ifTrue: [ packages removeKey: pkg name ] ] ].
    packages notEmpty
        ifTrue: [ 
            mcLoader preLoad: self versionSpec.
            mcLoader load.
            mcLoader postLoad: self versionSpec ].
    ^ mcLoader