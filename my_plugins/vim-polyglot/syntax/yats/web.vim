if has_key(g:polyglot_is_disabled, 'typescript')
  finish
endif

syntax keyword typescriptBOM containedin=typescriptIdentifierName AbortController
syntax keyword typescriptBOM containedin=typescriptIdentifierName AbstractWorker AnalyserNode
syntax keyword typescriptBOM containedin=typescriptIdentifierName App Apps ArrayBuffer
syntax keyword typescriptBOM containedin=typescriptIdentifierName ArrayBufferView
syntax keyword typescriptBOM containedin=typescriptIdentifierName Attr AudioBuffer
syntax keyword typescriptBOM containedin=typescriptIdentifierName AudioBufferSourceNode
syntax keyword typescriptBOM containedin=typescriptIdentifierName AudioContext AudioDestinationNode
syntax keyword typescriptBOM containedin=typescriptIdentifierName AudioListener AudioNode
syntax keyword typescriptBOM containedin=typescriptIdentifierName AudioParam BatteryManager
syntax keyword typescriptBOM containedin=typescriptIdentifierName BiquadFilterNode
syntax keyword typescriptBOM containedin=typescriptIdentifierName BlobEvent BluetoothAdapter
syntax keyword typescriptBOM containedin=typescriptIdentifierName BluetoothDevice
syntax keyword typescriptBOM containedin=typescriptIdentifierName BluetoothManager
syntax keyword typescriptBOM containedin=typescriptIdentifierName CameraCapabilities
syntax keyword typescriptBOM containedin=typescriptIdentifierName CameraControl CameraManager
syntax keyword typescriptBOM containedin=typescriptIdentifierName CanvasGradient CanvasImageSource
syntax keyword typescriptBOM containedin=typescriptIdentifierName CanvasPattern CanvasRenderingContext2D
syntax keyword typescriptBOM containedin=typescriptIdentifierName CaretPosition CDATASection
syntax keyword typescriptBOM containedin=typescriptIdentifierName ChannelMergerNode
syntax keyword typescriptBOM containedin=typescriptIdentifierName ChannelSplitterNode
syntax keyword typescriptBOM containedin=typescriptIdentifierName CharacterData ChildNode
syntax keyword typescriptBOM containedin=typescriptIdentifierName ChromeWorker Comment
syntax keyword typescriptBOM containedin=typescriptIdentifierName Connection Console
syntax keyword typescriptBOM containedin=typescriptIdentifierName ContactManager Contacts
syntax keyword typescriptBOM containedin=typescriptIdentifierName ConvolverNode Coordinates
syntax keyword typescriptBOM containedin=typescriptIdentifierName CSS CSSConditionRule
syntax keyword typescriptBOM containedin=typescriptIdentifierName CSSGroupingRule
syntax keyword typescriptBOM containedin=typescriptIdentifierName CSSKeyframeRule
syntax keyword typescriptBOM containedin=typescriptIdentifierName CSSKeyframesRule
syntax keyword typescriptBOM containedin=typescriptIdentifierName CSSMediaRule CSSNamespaceRule
syntax keyword typescriptBOM containedin=typescriptIdentifierName CSSPageRule CSSRule
syntax keyword typescriptBOM containedin=typescriptIdentifierName CSSRuleList CSSStyleDeclaration
syntax keyword typescriptBOM containedin=typescriptIdentifierName CSSStyleRule CSSStyleSheet
syntax keyword typescriptBOM containedin=typescriptIdentifierName CSSSupportsRule
syntax keyword typescriptBOM containedin=typescriptIdentifierName DataTransfer DataView
syntax keyword typescriptBOM containedin=typescriptIdentifierName DedicatedWorkerGlobalScope
syntax keyword typescriptBOM containedin=typescriptIdentifierName DelayNode DeviceAcceleration
syntax keyword typescriptBOM containedin=typescriptIdentifierName DeviceRotationRate
syntax keyword typescriptBOM containedin=typescriptIdentifierName DeviceStorage DirectoryEntry
syntax keyword typescriptBOM containedin=typescriptIdentifierName DirectoryEntrySync
syntax keyword typescriptBOM containedin=typescriptIdentifierName DirectoryReader
syntax keyword typescriptBOM containedin=typescriptIdentifierName DirectoryReaderSync
syntax keyword typescriptBOM containedin=typescriptIdentifierName Document DocumentFragment
syntax keyword typescriptBOM containedin=typescriptIdentifierName DocumentTouch DocumentType
syntax keyword typescriptBOM containedin=typescriptIdentifierName DOMCursor DOMError
syntax keyword typescriptBOM containedin=typescriptIdentifierName DOMException DOMHighResTimeStamp
syntax keyword typescriptBOM containedin=typescriptIdentifierName DOMImplementation
syntax keyword typescriptBOM containedin=typescriptIdentifierName DOMImplementationRegistry
syntax keyword typescriptBOM containedin=typescriptIdentifierName DOMParser DOMRequest
syntax keyword typescriptBOM containedin=typescriptIdentifierName DOMString DOMStringList
syntax keyword typescriptBOM containedin=typescriptIdentifierName DOMStringMap DOMTimeStamp
syntax keyword typescriptBOM containedin=typescriptIdentifierName DOMTokenList DynamicsCompressorNode
syntax keyword typescriptBOM containedin=typescriptIdentifierName Element Entry EntrySync
syntax keyword typescriptBOM containedin=typescriptIdentifierName Extensions FileException
syntax keyword typescriptBOM containedin=typescriptIdentifierName Float32Array Float64Array
syntax keyword typescriptBOM containedin=typescriptIdentifierName FMRadio FormData
syntax keyword typescriptBOM containedin=typescriptIdentifierName GainNode Gamepad
syntax keyword typescriptBOM containedin=typescriptIdentifierName GamepadButton Geolocation
syntax keyword typescriptBOM containedin=typescriptIdentifierName History HTMLAnchorElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLAreaElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLAudioElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLBaseElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLBodyElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLBRElement HTMLButtonElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLCanvasElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLCollection HTMLDataElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLDataListElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLDivElement HTMLDListElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLDocument HTMLElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLEmbedElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLFieldSetElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLFormControlsCollection
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLFormElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLHeadElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLHeadingElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLHRElement HTMLHtmlElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLIFrameElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLImageElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLInputElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLKeygenElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLLabelElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLLegendElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLLIElement HTMLLinkElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLMapElement HTMLMediaElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLMetaElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLMeterElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLModElement HTMLObjectElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLOListElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLOptGroupElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLOptionElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLOptionsCollection
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLOutputElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLParagraphElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLParamElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLPreElement HTMLProgressElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLQuoteElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLScriptElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLSelectElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLSourceElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLSpanElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLStyleElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLTableCaptionElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLTableCellElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLTableColElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLTableDataCellElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLTableElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLTableHeaderCellElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLTableRowElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLTableSectionElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLTextAreaElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLTimeElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLTitleElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLTrackElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLUListElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLUnknownElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName HTMLVideoElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName IDBCursor IDBCursorSync
syntax keyword typescriptBOM containedin=typescriptIdentifierName IDBCursorWithValue
syntax keyword typescriptBOM containedin=typescriptIdentifierName IDBDatabase IDBDatabaseSync
syntax keyword typescriptBOM containedin=typescriptIdentifierName IDBEnvironment IDBEnvironmentSync
syntax keyword typescriptBOM containedin=typescriptIdentifierName IDBFactory IDBFactorySync
syntax keyword typescriptBOM containedin=typescriptIdentifierName IDBIndex IDBIndexSync
syntax keyword typescriptBOM containedin=typescriptIdentifierName IDBKeyRange IDBObjectStore
syntax keyword typescriptBOM containedin=typescriptIdentifierName IDBObjectStoreSync
syntax keyword typescriptBOM containedin=typescriptIdentifierName IDBOpenDBRequest
syntax keyword typescriptBOM containedin=typescriptIdentifierName IDBRequest IDBTransaction
syntax keyword typescriptBOM containedin=typescriptIdentifierName IDBTransactionSync
syntax keyword typescriptBOM containedin=typescriptIdentifierName IDBVersionChangeEvent
syntax keyword typescriptBOM containedin=typescriptIdentifierName ImageData IndexedDB
syntax keyword typescriptBOM containedin=typescriptIdentifierName Int16Array Int32Array
syntax keyword typescriptBOM containedin=typescriptIdentifierName Int8Array L10n LinkStyle
syntax keyword typescriptBOM containedin=typescriptIdentifierName LocalFileSystem
syntax keyword typescriptBOM containedin=typescriptIdentifierName LocalFileSystemSync
syntax keyword typescriptBOM containedin=typescriptIdentifierName Location LockedFile
syntax keyword typescriptBOM containedin=typescriptIdentifierName MediaQueryList MediaQueryListListener
syntax keyword typescriptBOM containedin=typescriptIdentifierName MediaRecorder MediaSource
syntax keyword typescriptBOM containedin=typescriptIdentifierName MediaStream MediaStreamTrack
syntax keyword typescriptBOM containedin=typescriptIdentifierName MutationObserver
syntax keyword typescriptBOM containedin=typescriptIdentifierName Navigator NavigatorGeolocation
syntax keyword typescriptBOM containedin=typescriptIdentifierName NavigatorID NavigatorLanguage
syntax keyword typescriptBOM containedin=typescriptIdentifierName NavigatorOnLine
syntax keyword typescriptBOM containedin=typescriptIdentifierName NavigatorPlugins
syntax keyword typescriptBOM containedin=typescriptIdentifierName Node NodeFilter
syntax keyword typescriptBOM containedin=typescriptIdentifierName NodeIterator NodeList
syntax keyword typescriptBOM containedin=typescriptIdentifierName Notification OfflineAudioContext
syntax keyword typescriptBOM containedin=typescriptIdentifierName OscillatorNode PannerNode
syntax keyword typescriptBOM containedin=typescriptIdentifierName ParentNode Performance
syntax keyword typescriptBOM containedin=typescriptIdentifierName PerformanceNavigation
syntax keyword typescriptBOM containedin=typescriptIdentifierName PerformanceTiming
syntax keyword typescriptBOM containedin=typescriptIdentifierName Permissions PermissionSettings
syntax keyword typescriptBOM containedin=typescriptIdentifierName Plugin PluginArray
syntax keyword typescriptBOM containedin=typescriptIdentifierName Position PositionError
syntax keyword typescriptBOM containedin=typescriptIdentifierName PositionOptions
syntax keyword typescriptBOM containedin=typescriptIdentifierName PowerManager ProcessingInstruction
syntax keyword typescriptBOM containedin=typescriptIdentifierName PromiseResolver
syntax keyword typescriptBOM containedin=typescriptIdentifierName PushManager Range
syntax keyword typescriptBOM containedin=typescriptIdentifierName RTCConfiguration
syntax keyword typescriptBOM containedin=typescriptIdentifierName RTCPeerConnection
syntax keyword typescriptBOM containedin=typescriptIdentifierName RTCPeerConnectionErrorCallback
syntax keyword typescriptBOM containedin=typescriptIdentifierName RTCSessionDescription
syntax keyword typescriptBOM containedin=typescriptIdentifierName RTCSessionDescriptionCallback
syntax keyword typescriptBOM containedin=typescriptIdentifierName ScriptProcessorNode
syntax keyword typescriptBOM containedin=typescriptIdentifierName Selection SettingsLock
syntax keyword typescriptBOM containedin=typescriptIdentifierName SettingsManager
syntax keyword typescriptBOM containedin=typescriptIdentifierName SharedWorker StyleSheet
syntax keyword typescriptBOM containedin=typescriptIdentifierName StyleSheetList SVGAElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGAngle SVGAnimateColorElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGAnimatedAngle
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGAnimatedBoolean
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGAnimatedEnumeration
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGAnimatedInteger
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGAnimatedLength
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGAnimatedLengthList
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGAnimatedNumber
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGAnimatedNumberList
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGAnimatedPoints
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGAnimatedPreserveAspectRatio
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGAnimatedRect
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGAnimatedString
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGAnimatedTransformList
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGAnimateElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGAnimateMotionElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGAnimateTransformElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGAnimationElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGCircleElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGClipPathElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGCursorElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGDefsElement SVGDescElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGElement SVGEllipseElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGFilterElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGFontElement SVGFontFaceElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGFontFaceFormatElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGFontFaceNameElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGFontFaceSrcElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGFontFaceUriElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGForeignObjectElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGGElement SVGGlyphElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGGradientElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGHKernElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGImageElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGLength SVGLengthList
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGLinearGradientElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGLineElement SVGMaskElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGMatrix SVGMissingGlyphElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGMPathElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGNumber SVGNumberList
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGPathElement SVGPatternElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGPoint SVGPolygonElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGPolylineElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGPreserveAspectRatio
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGRadialGradientElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGRect SVGRectElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGScriptElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGSetElement SVGStopElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGStringList SVGStylable
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGStyleElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGSVGElement SVGSwitchElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGSymbolElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGTests SVGTextElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGTextPositioningElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGTitleElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGTransform SVGTransformable
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGTransformList
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGTRefElement SVGTSpanElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGUseElement SVGViewElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName SVGVKernElement
syntax keyword typescriptBOM containedin=typescriptIdentifierName TCPServerSocket
syntax keyword typescriptBOM containedin=typescriptIdentifierName TCPSocket Telephony
syntax keyword typescriptBOM containedin=typescriptIdentifierName TelephonyCall Text
syntax keyword typescriptBOM containedin=typescriptIdentifierName TextDecoder TextEncoder
syntax keyword typescriptBOM containedin=typescriptIdentifierName TextMetrics TimeRanges
syntax keyword typescriptBOM containedin=typescriptIdentifierName Touch TouchList
syntax keyword typescriptBOM containedin=typescriptIdentifierName Transferable TreeWalker
syntax keyword typescriptBOM containedin=typescriptIdentifierName Uint16Array Uint32Array
syntax keyword typescriptBOM containedin=typescriptIdentifierName Uint8Array Uint8ClampedArray
syntax keyword typescriptBOM containedin=typescriptIdentifierName URLSearchParams
syntax keyword typescriptBOM containedin=typescriptIdentifierName URLUtilsReadOnly
syntax keyword typescriptBOM containedin=typescriptIdentifierName UserProximityEvent
syntax keyword typescriptBOM containedin=typescriptIdentifierName ValidityState VideoPlaybackQuality
syntax keyword typescriptBOM containedin=typescriptIdentifierName WaveShaperNode WebBluetooth
syntax keyword typescriptBOM containedin=typescriptIdentifierName WebGLRenderingContext
syntax keyword typescriptBOM containedin=typescriptIdentifierName WebSMS WebSocket
syntax keyword typescriptBOM containedin=typescriptIdentifierName WebVTT WifiManager
syntax keyword typescriptBOM containedin=typescriptIdentifierName Window Worker WorkerConsole
syntax keyword typescriptBOM containedin=typescriptIdentifierName WorkerLocation WorkerNavigator
syntax keyword typescriptBOM containedin=typescriptIdentifierName XDomainRequest XMLDocument
syntax keyword typescriptBOM containedin=typescriptIdentifierName XMLHttpRequestEventTarget
if exists("did_typescript_hilink") | HiLink typescriptBOM Structure
endif
