private
chooseApp: anIndex

        ^default := self registeredClasses at: anIndex ifAbsent: [nil]