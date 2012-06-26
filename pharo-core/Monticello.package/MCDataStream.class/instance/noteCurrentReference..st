write and read
noteCurrentReference: typeID
    "PRIVATE -- If we support references for type typeID, remember
     the current byteStream position so we can add the next object to
     the 'objects' dictionary, and return true. Else return false.
     This method is here to be overridden by ReferenceStream"

    ^ false