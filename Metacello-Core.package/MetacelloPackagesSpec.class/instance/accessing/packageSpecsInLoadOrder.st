packageSpecsInLoadOrder
    | orderedSpecs moved lastMovedSpecs count terminationLimit map specsWithIncludes firstTime |
    "specification order is the default order"
    map := self map.
    orderedSpecs := OrderedCollection new.
    self list
        do: [ :member | 
            | spec |
            spec := map at: member name ifAbsent: [  ].
            (spec == nil or: [ orderedSpecs includes: spec ])
                ifFalse: [ orderedSpecs add: spec ] ].
    orderedSpecs isEmpty
        ifTrue: [ ^ orderedSpecs ].
    moved := true.
    count := 0.
    terminationLimit := orderedSpecs size * 2.
    [ moved ]
        whileTrue: [ 
            count := count + 1.
            count > terminationLimit
                ifTrue: [ 
                    "Cheap termination hack - an APPARENT loop"
                    self error: 'Apparent loop in before/after dependency definitions' ].
            moved := false.
            orderedSpecs
                do: [ :packageSpec | moved := moved or: [ self sortPackageSpecs: orderedSpecs for: packageSpec ] ] ].
    lastMovedSpecs := Set new.
    moved := true.
    count := 0.
    specsWithIncludes := orderedSpecs select: [ :pkgSpec | pkgSpec includesForPackageOrdering isEmpty not ].
    firstTime := true.
    [ moved ]
        whileTrue: [ 
            | result |
            count := count + 1.	"count > terminationLimit"
            count > 14
                ifTrue: [ 
                    "Cheap termination hack - an APPARENT loop"
                    self error: 'Apparent loop in before/after dependency definitions' ].
            moved := false.
            result := Set new.
            specsWithIncludes
                do: [ :packageSpec | result addAll: (self applyIncludesTo: orderedSpecs for: packageSpec firstTime: firstTime) ].
            result size = lastMovedSpecs size
                ifTrue: [ 
                    result
                        do: [ :name | 
                            (lastMovedSpecs includes: name)
                                ifFalse: [ moved := true ] ] ]
                ifFalse: [ moved := true ].
            lastMovedSpecs := result.
            firstTime := false ].
    ^ orderedSpecs