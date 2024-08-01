local M = {}

function M.get()
    return {
        -- builtin: http://www.fleiner.com/vim/syntax/javascript.vim:
        javaScriptNull = { link = "Constant" },
        javaScriptIdentifier = { link = "Identifier" },
        javaScriptParens = { link = "SpecialChar" },
        javaScriptBraces = { link = "SpecialChar" },
        javaScriptNumber = { link = "Number" },
        javaScriptLabel = { link = "Label" },
        javaScriptGlobal = { link = "Type" },
        javaScriptMessage = { link = "javaScriptGlobal" },

        -- vim-javascript: https://github.com/pangloss/vim-javascript:
        jsNoise = { link = "Normal" },
        Noise = { link = "Normal" },
        jsParens = { link = "SpecialChar" },
        jsBrackets = { link = "SpecialChar" },
        jsObjectBraces = { link = "SpecialChar" },
        jsThis = { link = "Statement" },
        jsUndefined = { link = "Error" },
        jsNull = { link = "Constant" },
        jsNan = { link = "Constant" },
        jsSuper = { link = "Identifier" },
        jsPrototype = { link = "Identifier" },
        jsFunction = { link = "Function" },
        jsGlobalNodeObjects = { link = "javaScriptGlobal" },
        jsGlobalObjects = { link = "javaScriptGlobal" },
        jsArrowFunction = { link = "Function" },
        jsArrowFuncArgs = { link = "Identifier" },
        jsFuncArgs = { link = "Identifier" },
        jsObjectProp = { link = "PreProc" },
        jsVariableDef = { link = "Variable" },
        jsObjectKey = { link = "Normal" },
        jsParen = { link = "SpecialChar" },
        jsParenIfElse = { link = "Conditional" },
        jsParenRepeat = { link = "Repeat" },
        jsParenSwitch = { link = "Conditional" },
        jsParenCatch = { link = "Exception" },
        jsBracket = { link = "SpecialChar" },
        jsObjectValue = { link = "jsObjectKey" },
        jsDestructuringBlock = { link = "String" },
        jsBlockLabel = { link = "Label" },
        jsFunctionKey = { link = "Function" },
        jsClassDefinition = { link = "Define" },
        jsDot = { link = "Delimiter" },
        jsSpreadOperator = { link = "Operator" },
        jsModuleKeyword = { link = "Keyword" },
        jsTemplateBraces = { link = "SpecialChar" },
        jsTemplateExpression = { link = "jsTemplateBraces" },
        jsSpreadExpression = { link = "jsTemplateExpression" },
        jsClassMethodType = { link = "Type" },
        jsExceptions = { link = "Exception" },

        -- yajs: https://github.com/othree/yajs.vim:
        javascriptOpSymbol = { link = "Function" },
        javascriptOpSymbols = { link = "Function" },
        javascriptIdentifierName = { link = "Identifier" },
        javascriptVariable = { link = "Variable" },
        javascriptObjectLabel = { link = "Label" },
        javascriptPropertyNameString = { link = "PreProc" },
        javascriptFuncArg = { link = "Identifier" },
        javascriptObjectLiteral = { link = "Function" },
        javascriptIdentifier = { link = "Identifier" },
        javascriptArrowFunc = { link = "Function" },
        javascriptTemplate = { link = "Type" },
        javascriptTemplateSubstitution = { link = "javascriptTemplate" },
        javascriptTemplateSB = { link = "javascriptTemplateSubstitution" },
        javascriptNodeGlobal = { link = "javaScriptGlobal" },
        javascriptDocTags = { link = "Tag" },
        javascriptDocNotation = { link = "String" },
        javascriptClassSuper = { link = "Identifier" },
        javascriptClassName = { link = "Type" },
        javascriptClassSuperName = { link = "Type" },
        javascriptOperator = { link = "Operator" },
        javascriptBrackets = { link = "SpecialChar" },
        javascriptBraces = { link = "SpecialChar" },
        javascriptLabel = { link = "Label" },
        javascriptEndColons = { link = "Delimiter" },
        javascriptObjectLabelColon = { link = "Delimiter" },
        javascriptDotNotation = { link = "Identifier" },
        javascriptGlobalArrayDot = { link = "Identifier" },
        javascriptGlobalBigIntDot = { link = "Identifier" },
        javascriptGlobalDateDot = { link = "Identifier" },
        javascriptGlobalJSONDot = { link = "Identifier" },
        javascriptGlobalMathDot = { link = "Identifier" },
        javascriptGlobalNumberDot = { link = "Identifier" },
        javascriptGlobalObjectDot = { link = "Identifier" },
        javascriptGlobalPromiseDot = { link = "Identifier" },
        javascriptGlobalRegExpDot = { link = "Identifier" },
        javascriptGlobalStringDot = { link = "Identifier" },
        javascriptGlobalSymbolDot = { link = "Identifier" },
        javascriptGlobalURLDot = { link = "Identifier" },
        javascriptMethod = { link = "Function" },
        javascriptMethodName = { link = "Function" },
        javascriptObjectMethodName = { link = "Function" },
        javascriptGlobalMethod = { link = "Function" },
        javascriptDOMStorageMethod = { link = "Function" },
        javascriptFileMethod = { link = "Function" },
        javascriptFileReaderMethod = { link = "Function" },
        javascriptFileListMethod = { link = "Function" },
        javascriptBlobMethod = { link = "Function" },
        javascriptURLStaticMethod = { link = "Function" },
        javascriptNumberStaticMethod = { link = "Function" },
        javascriptNumberMethod = { link = "Function" },
        javascriptDOMNodeMethod = { link = "Function" },
        javascriptES6BigIntStaticMethod = { link = "Function" },
        javascriptBOMWindowMethod = { link = "Function" },
        javascriptHeadersMethod = { link = "Function" },
        javascriptRequestMethod = { link = "Function" },
        javascriptResponseMethod = { link = "Function" },
        javascriptES6SetMethod = { link = "Function" },
        javascriptReflectMethod = { link = "Function" },
        javascriptPaymentMethod = { link = "Function" },
        javascriptPaymentResponseMethod = { link = "Function" },
        javascriptTypedArrayStaticMethod = { link = "Function" },
        javascriptGeolocationMethod = { link = "Function" },
        javascriptES6MapMethod = { link = "Function" },
        javascriptServiceWorkerMethod = { link = "Function" },
        javascriptCacheMethod = { link = "Function" },
        javascriptFunctionMethod = { link = "Function" },
        javascriptXHRMethod = { link = "Function" },
        javascriptBOMNavigatorMethod = { link = "Function" },
        javascriptDOMEventTargetMethod = { link = "Function" },
        javascriptDOMEventMethod = { link = "Function" },
        javascriptIntlMethod = { link = "Function" },
        javascriptDOMDocMethod = { link = "Function" },
        javascriptStringStaticMethod = { link = "String" },
        javascriptStringMethod = { link = "String" },
        javascriptSymbolStaticMethod = { link = "Function" },
        javascriptRegExpMethod = { link = "Function" },
        javascriptObjectStaticMethod = { link = "Function" },
        javascriptObjectMethod = { link = "Function" },
        javascriptBOMLocationMethod = { link = "Function" },
        javascriptJSONStaticMethod = { link = "Function" },
        javascriptGeneratorMethod = { link = "Function" },
        javascriptEncodingMethod = { link = "Function" },
        javascriptPromiseStaticMethod = { link = "Function" },
        javascriptPromiseMethod = { link = "Function" },
        javascriptBOMHistoryMethod = { link = "Function" },
        javascriptDOMFormMethod = { link = "Function" },
        javascriptClipboardMethod = { link = "Function" },
        javascriptBroadcastMethod = { link = "Function" },
        javascriptDateStaticMethod = { link = "Function" },
        javascriptDateMethod = { link = "Function" },
        javascriptConsoleMethod = { link = "Function" },
        javascriptArrayStaticMethod = { link = "Function" },
        javascriptArrayMethod = { link = "Function" },
        javascriptMathStaticMethod = { link = "Function" },
        javascriptSubtleCryptoMethod = { link = "Function" },
        javascriptCryptoMethod = { link = "Function" },
        javascriptProp = { link = "PreProc" },
        javascriptBOMWindowProp = { link = "PreProc" },
        javascriptDOMStorageProp = { link = "PreProc" },
        javascriptFileReaderProp = { link = "PreProc" },
        javascriptURLUtilsProp = { link = "PreProc" },
        javascriptNumberStaticProp = { link = "PreProc" },
        javascriptDOMNodeProp = { link = "PreProc" },
        javascriptRequestProp = { link = "PreProc" },
        javascriptResponseProp = { link = "PreProc" },
        javascriptES6SetProp = { link = "PreProc" },
        javascriptPaymentProp = { link = "PreProc" },
        javascriptPaymentResponseProp = { link = "PreProc" },
        javascriptPaymentAddressProp = { link = "PreProc" },
        javascriptPaymentShippingOptionProp = { link = "PreProc" },
        javascriptTypedArrayStaticProp = { link = "PreProc" },
        javascriptServiceWorkerProp = { link = "PreProc" },
        javascriptES6MapProp = { link = "PreProc" },
        javascriptRegExpStaticProp = { link = "PreProc" },
        javascriptRegExpProp = { link = "PreProc" },
        javascriptXHRProp = { link = "PreProc" },
        javascriptBOMNavigatorProp = { link = "Function" },
        javascriptDOMEventProp = { link = "PreProc" },
        javascriptBOMNetworkProp = { link = "PreProc" },
        javascriptDOMDocProp = { link = "PreProc" },
        javascriptSymbolStaticProp = { link = "PreProc" },
        javascriptSymbolProp = { link = "PreProc" },
        javascriptBOMLocationProp = { link = "PreProc" },
        javascriptEncodingProp = { link = "PreProc" },
        javascriptCryptoProp = { link = "PreProc" },
        javascriptBOMHistoryProp = { link = "PreProc" },
        javascriptDOMFormProp = { link = "PreProc" },
        javascriptDataViewProp = { link = "PreProc" },
        javascriptBroadcastProp = { link = "PreProc" },
        javascriptMathStaticProp = { link = "PreProc" },
    }
end

return M
