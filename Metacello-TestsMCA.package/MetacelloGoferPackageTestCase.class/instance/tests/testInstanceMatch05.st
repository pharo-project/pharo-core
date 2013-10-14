testInstanceMatch05
    "used to allow this, but we need exact matches on the branch names ... otherwise we can't control which branch is loaded"

    self
        deny:
            ((MetacelloGoferPackage name: 'Seaside2' packageFilename: 'Seaside2.8')
                matches: (GoferVersionReference name: 'Seaside2.8a1-lr.597'))