stack list
changeStackListTo: aCollection 

        stackList := aCollection.
        self changed: #stackNameList.
        self stackListIndex: 0