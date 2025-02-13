local utils = require('monarized.utils')

return function(c, s, cs)
    local attributes = {
        'TSAnnotation', 'TSAttribute', -- TS
        'luametatableevents', 'luametatablearithmetic',
        'luametatableequivalence' -- lua
    }
    local numbers = {
        'TSBoolean', 'TSFloat', 'TSNumber', -- TS
        'Boolean', 'Float', 'Number' -- VL
    }
    local comments = {
        'TSComment', -- TS
        'Comment', -- VL
        'manFooter', -- man
        'rustCommentLine', 'rustCommentBlock', -- rust
        'vimCommentTitle', 'vimCommentLine' -- vim
    }
    local constructors = {
        'TSConstructor' -- TS
    }
    local conditionals = {
        'TSConditional', -- TS
        'Conditional', 'PreCondit', -- VL
        'cPreCondit', 'cPreConditMatch' -- C/C++
    }
    local constants = {
        'TSConstant', -- TS
        'Constant', -- VL
        'cConstant', 'cppConstant' -- C/C++
    }
    local defines = {
        'TSConstMacro', -- TS
        'Define', 'Macro' -- VL
    }
    local exceptions = {
        'TSException', -- TS
        'Exception' -- VL
    }
    local fields = {
        'TSField', 'TSProperty', 'TSTag', -- TS
        'Tag' -- VL
    }
    local functions = {
        'TSFunction', 'TSFuncMacro', 'TSMethod', -- TS
        'Function', -- VL
        'pythonfunction', -- python
        'vimFunction', 'vimUserFunc' -- vim
    }
    local includes = {
        'TSInclude', -- TS
        'Include', 'PreProc', -- VL
        'cInclude', -- C/C++
        'pythonimport', -- python
        'rustExternCrate' -- rust
    }
    local keywords = {
        'TSKeyword', 'TSKeywordFunction', -- TS
        'Keyword', 'Statement', -- VL
        'cStatement', 'cppStatement', 'cppModifier', 'cppAccess', -- C/C++
        'pythonstatement', 'pythonkeyword', -- python
        'rustDeriveTrait', -- rust
        'luastatement', 'luakeyword', 'luamykeyword', 'luafunctioncall',
        'luaspecialfunction', -- lua
        'vimCommand', 'vimnotfunc' -- vim
    }
    local labels = {
        'TSLabel', -- TS
        'Label' -- VL
    }
    local namespaces = {
        'TSNamespace', -- TS
        'pythonModule' -- python
    }
    local nones = {
        'TSNone', -- VL
        'pythonnone' -- python
    }
    local operators = {
        'TSOperator', -- TS
        'Operator', -- VL
        'cOperator', 'cppOperator', -- C/C++
        'pythonoperator' -- python
    }
    local parameters = {
        'TSParameter', 'TSParameterReference', -- TS
        'pythonparam' -- python
    }
    local properties = {
        'TSProperty' -- TS
    }
    local punctuations = {
        'TSPunctDelimiter', 'TSPunctBracket', 'TSPunctSpecial',
        'TSTagDelimiter', -- TS
        'Delimiter', -- VL
        'vimparensep', 'vimsep', 'vimbracket', -- vim
        'shCmdParenRegion', 'shCmdSubRegion' -- sh
    }
    local repeats = {
        'TSRepeat', -- TS
        'Repeat' -- VL
    }
    local strings = {
        'TSCharacter', 'TSString', -- TS
        'Character', 'String', -- VL
        'cString', 'cCppString', -- C/C++
        'pythonstringdelimiter', 'pythonbytes', 'pythonrawbytes',
        'pythonbytescontent' -- python
    }
    local strings_specials = {
        'TSStringRegex', 'TSStriingEscape', -- TS
        'SpecialChar', -- VL
        'cSpecialCharacter', -- C/C++
        'pythonescape' -- python
    }
    local symbols = {
        'TSSymbol', -- TS
        'Special', 'SpecialComment', -- VL
        'cSpecial', -- C/C++
        'pythonsymbol', -- python
        'rustCommentLineDoc', 'rustCommentBlockDoc' -- rust
    }
    local texts = {
        'TSText', 'TSStrong', 'TSEmphais', 'TSUnderline', 'TSStrike', 'TSTitle',
        'TSLiteral', -- TS
        'Text', -- VL
        'manTitle' -- man
    }
    local uris = {
        'TSURI' -- TS
    }
    local types = {
        'TSType', 'TSTypeBuildin', -- TS
        'Type', 'StorageClass', 'Structure', 'Typedef', -- VL
        'cType', 'cStorageClass', 'cStructure', 'cppType', 'cppStorageClass',
        'cppStructure', -- C/C++
        'pythonclass', -- python
        'vimlet' -- vim
    }
    local variables = {
        'TSVariable', -- TS
        'Identifier', -- VL
        'pythonselfarg', -- python
        'rustIdentifier', -- rust
        'vimmapmodkey', 'vimnotation', 'vimfuncvar', 'vimvar', -- vim
        'shDerefSimple', 'shDerefVar' -- sh
    }
    local builtins = { -- such as self. in python
        'TSConstBuiltin', 'TSFuncBuiltin', 'TSVariableBuiltin', -- TS
        'pythonbuiltin', 'pythonself', -- python
        'vimmap' -- vim
    }
    local notes = {
        'TSNote', -- TS
        'Todo', -- VL
        'cTODO' -- C/C++
    }
    local warnings = {
        'TSWarning', -- TS
        'Debug' -- VL
    }
    local dangers = {
        'TSDanger' -- TS
    }
    local errors = {
        'TSError', -- TS
        'Error', -- VL
        'rustCommentLineDocError', 'rustCommentBlockDocError' -- rust
    }
    local groups = {
        {attributes, c.accent1},
        {numbers, c.fade1, c.none, s.bold},
        {comments, c.accent1},
        {constructors, c.fg0, c.none, cs.italic}, -- in C++ variable->constructors() \\ TS docs unclear
        {conditionals, c.fg0, c.none, s.bold},
        {constants, c.fg0},
        {defines, c.accent1},
        {exceptions, c.accent1},
        {fields, c.fg0, c.none},
        {functions, c.fg0, c.none},
        {includes, c.fg0, c.none, s.bold},
        {keywords, c.fg0, c.none, s.bold},
        {labels, c.fg0, c.none, cs.italic},
        {namespaces, c.fg0, c.none, cs.italic},
        {nones, c.fg0},
        {operators, c.fg0},
        {parameters, c.fg0, c.none, cs.italic},
        {properties, c.fg0},
        {punctuations, c.fade1},
        {repeats, c.fg0, c.none, cs.italic},
        {strings, c.accent0},
        {strings_specials, c.fg0},
        {symbols, c.fg0},
        {texts, c.fg0},
        {uris, c.fg0},
        {types, c.fg1, c.none, s.bold},
        {variables, c.fg1},
        {builtins, c.fade1, c.none, cs.italic},
        {notes, c.fg0},
        {warnings, c.yellow},
        {dangers, c.yellow},
        {errors, c.red}

    }

    local highlights = {}

    -- Apply grouping to each color group
    for _, group in ipairs(groups) do
        highlights = utils.merge({
            highlights,
            utils.highlight_to_groups({group[2], group[3], group[4]})(group[1])
        })
    end

    return highlights
end
