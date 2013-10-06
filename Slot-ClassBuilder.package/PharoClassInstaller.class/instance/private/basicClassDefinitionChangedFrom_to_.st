basicClassDefinitionChangedFrom: oldClass to: newClass

    " Copy over the trait composition "
    self copyTraitCompositionFrom: oldClass to: newClass.        
    " Copy over the method organization "
    newClass organization: oldClass organization.    
    " Update the superclass links "
    oldClass superclass == newClass superclass
        ifFalse: [ 
            oldClass superclass removeSubclass: oldClass.
            newClass superclass addSubclass: newClass ].

    self systemAnnouncer classDefinitionChangedFrom: oldClass to: newClass