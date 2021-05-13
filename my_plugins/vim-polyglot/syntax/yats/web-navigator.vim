if has_key(g:polyglot_is_disabled, 'typescript')
  finish
endif

syntax keyword typescriptBOMNavigatorProp contained battery buildID connection cookieEnabled
syntax keyword typescriptBOMNavigatorProp contained doNotTrack maxTouchPoints oscpu
syntax keyword typescriptBOMNavigatorProp contained productSub push serviceWorker
syntax keyword typescriptBOMNavigatorProp contained vendor vendorSub
syntax cluster props add=typescriptBOMNavigatorProp
if exists("did_typescript_hilink") | HiLink typescriptBOMNavigatorProp Keyword
endif
syntax keyword typescriptBOMNavigatorMethod contained addIdleObserver geolocation nextgroup=typescriptFuncCallArg
syntax keyword typescriptBOMNavigatorMethod contained getDeviceStorage getDeviceStorages nextgroup=typescriptFuncCallArg
syntax keyword typescriptBOMNavigatorMethod contained getGamepads getUserMedia registerContentHandler nextgroup=typescriptFuncCallArg
syntax keyword typescriptBOMNavigatorMethod contained removeIdleObserver requestWakeLock nextgroup=typescriptFuncCallArg
syntax keyword typescriptBOMNavigatorMethod contained share vibrate watch registerProtocolHandler nextgroup=typescriptFuncCallArg
syntax keyword typescriptBOMNavigatorMethod contained sendBeacon nextgroup=typescriptFuncCallArg
syntax cluster props add=typescriptBOMNavigatorMethod
if exists("did_typescript_hilink") | HiLink typescriptBOMNavigatorMethod Keyword
endif
syntax keyword typescriptServiceWorkerMethod contained register nextgroup=typescriptFuncCallArg
syntax cluster props add=typescriptServiceWorkerMethod
if exists("did_typescript_hilink") | HiLink typescriptServiceWorkerMethod Keyword
endif
