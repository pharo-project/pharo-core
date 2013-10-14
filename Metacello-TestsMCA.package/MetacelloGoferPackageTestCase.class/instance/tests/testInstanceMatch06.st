testInstanceMatch06
    self
        deny:
            ((MetacelloGoferPackage name: 'Metacello-Platform' packageFilename: 'Metacello-Platform.pharo')
                matches: (GoferVersionReference name: 'Metacello-Platform.pharo20-lr.597')).
    self
        assert:
            ((MetacelloGoferPackage name: 'Metacello-Platform' packageFilename: 'Metacello-Platform.pharo')
                matches: (GoferVersionReference name: 'Metacello-Platform.pharo-lr.597'))