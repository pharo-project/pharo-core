dynamicTab
      | tab |
      tab := self newTab.
      tab
          label: 'Dynamic';
          icon: Smalltalk ui icons nautilusIcon;
          model: (DynamicWidgetChange  new).
      ^ tab 