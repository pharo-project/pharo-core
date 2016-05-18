dynamicTab
      | tab |
      tab := self newTab.
      tab
          label: 'Dynamic';
          icon: (Smalltalk ui icons iconNamed: #nautilusIcon);
          model: (DynamicWidgetChange  new).
      ^ tab 