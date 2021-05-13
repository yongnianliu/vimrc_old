if has_key(g:polyglot_is_disabled, 'typescript')
  finish
endif

syntax keyword typescriptDOMElemAttrs contained accessKey clientHeight clientLeft
syntax keyword typescriptDOMElemAttrs contained clientTop clientWidth id innerHTML
syntax keyword typescriptDOMElemAttrs contained length onafterscriptexecute onbeforescriptexecute
syntax keyword typescriptDOMElemAttrs contained oncopy oncut onpaste onwheel scrollHeight
syntax keyword typescriptDOMElemAttrs contained scrollLeft scrollTop scrollWidth tagName
syntax keyword typescriptDOMElemAttrs contained classList className name outerHTML
syntax keyword typescriptDOMElemAttrs contained style
if exists("did_typescript_hilink") | HiLink typescriptDOMElemAttrs Keyword
endif
syntax keyword typescriptDOMElemFuncs contained getAttributeNS getAttributeNode getAttributeNodeNS
syntax keyword typescriptDOMElemFuncs contained getBoundingClientRect getClientRects
syntax keyword typescriptDOMElemFuncs contained getElementsByClassName getElementsByTagName
syntax keyword typescriptDOMElemFuncs contained getElementsByTagNameNS hasAttribute
syntax keyword typescriptDOMElemFuncs contained hasAttributeNS insertAdjacentHTML
syntax keyword typescriptDOMElemFuncs contained matches querySelector querySelectorAll
syntax keyword typescriptDOMElemFuncs contained removeAttribute removeAttributeNS
syntax keyword typescriptDOMElemFuncs contained removeAttributeNode requestFullscreen
syntax keyword typescriptDOMElemFuncs contained requestPointerLock scrollIntoView
syntax keyword typescriptDOMElemFuncs contained setAttribute setAttributeNS setAttributeNode
syntax keyword typescriptDOMElemFuncs contained setAttributeNodeNS setCapture supports
syntax keyword typescriptDOMElemFuncs contained getAttribute
if exists("did_typescript_hilink") | HiLink typescriptDOMElemFuncs Keyword
endif
