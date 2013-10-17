packageSpecsInLoadOrderForMap: packageMap
    | loadOrder pkgs packageNames importNames importProjectSpec importSpec |
    loadOrder := self packageSpecsInLoadOrder.
    importNames := (packageNames := (packageMap values collect: [ :pkg | pkg name ]) asSet) copy.
    self import ifNil: [ ^ loadOrder select: [ :pkg | packageNames includes: pkg name ] ].
    loadOrder do: [ :pkg | importNames remove: pkg name ifAbsent: [  ] ].
    pkgs := OrderedCollection new.
    importProjectSpec := loadOrder detect: [ :pkg | pkg name = self import ].
    loadOrder
        do: [ :pkg | 
            (packageNames includes: pkg name)
                ifTrue: [ pkgs add: pkg ].
            pkg name = self import
                ifTrue: [ 
                    "insert the imports at this point"
                    importNames
                        do: [ :importedName | 
                            pkgs
                                add:
                                    (importSpec := importProjectSpec copy
                                        name: importedName;
                                        mergeImportLoads: {importedName};
                                        yourself).
                            importSpec projectReference name: importedName ] ] ].
    ^ pkgs