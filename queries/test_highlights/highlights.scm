(comment) @comment
((tag) @variable (#eq? @variable "@variable"))                                                           ; various variable names
((tag) @variable.builtin (#eq? @variable.builtin "@variable.builtin"))                                   ; built-in variable names (e.g. this, self)
((tag) @variable.parameter (#eq? @variable.parameter "@variable.parameter"))                             ; parameters of a function
((tag) @variable.parameter.builtin (#eq? @variable.parameter.builtin "@variable.parameter.builtin"))     ; special parameters (e.g. _, it)
((tag) @variable.member (#eq? @variable.member "@variable.member"))                                      ; object and struct fields
((tag) @constant (#eq? @constant "@constant"))                                                           ; constant identifiers
((tag) @constant.builtin (#eq? @constant.builtin "@constant.builtin"))                                   ; built-in constant values
((tag) @constant.macro (#eq? @constant.macro "@constant.macro"))                                         ; constants defined by the preprocessor
((tag) @module (#eq? @module "@module"))                                                                 ; modules or namespaces
((tag) @module.builtin (#eq? @module.builtin "@module.builtin"))                                         ; built-in modules or namespaces
((tag) @label (#eq? @label "@label"))                                                                    ; GOTO and other labels (e.g. label: in C), including heredoc labels
((tag) @string (#eq? @string "@string"))                                                                 ; string literals
((tag) @string.documentation (#eq? @string.documentation "@string.documentation"))                       ; string documenting code (e.g. Python docstrings)
((tag) @string.regexp (#eq? @string.regexp "@string.regexp"))                                            ; regular expressions
((tag) @string.escape (#eq? @string.escape "@string.escape"))                                            ; escape sequences
((tag) @string.special (#eq? @string.special "@string.special"))                                         ; other special strings (e.g. dates)
((tag) @string.special.symbol (#eq? @string.special.symbol "@string.special.symbol"))                    ; symbols or atoms
((tag) @string.special.path (#eq? @string.special.path "@string.special.path"))                          ; filenames
((tag) @string.special.url (#eq? @string.special.url "@string.special.url"))                             ; URIs (e.g. hyperlinks)
((tag) @character (#eq? @character "@character"))                                                        ; character literals
((tag) @character.special (#eq? @character.special "@character.special"))                                ; special characters (e.g. wildcards)
((tag) @boolean (#eq? @boolean "@boolean"))                                                              ; boolean literals
((tag) @number (#eq? @number "@number"))                                                                 ; numeric literals
((tag) @number.float (#eq? @number.float "@number.float"))                                               ; floating-point number literals
((tag) @type (#eq? @type "@type"))                                                                       ; type or class definitions and annotations
((tag) @type.builtin (#eq? @type.builtin "@type.builtin"))                                               ; built-in types
((tag) @type.definition (#eq? @type.definition "@type.definition"))                                      ; identifiers in type definitions (e.g. typedef <type> <identifier> in C)
((tag) @attribute (#eq? @attribute "@attribute"))                                                        ; attribute annotations (e.g. Python decorators, Rust lifetimes)
((tag) @attribute.builtin (#eq? @attribute.builtin "@attribute.builtin"))                                ; builtin annotations (e.g. @property in Python)
((tag) @property (#eq? @property "@property"))                                                           ; the key in key/value pairs
((tag) @function (#eq? @function "@function"))                                                           ; function definitions
((tag) @function.builtin (#eq? @function.builtin "@function.builtin"))                                   ; built-in functions
((tag) @function.call (#eq? @function.call "@function.call"))                                            ; function calls
((tag) @function.macro (#eq? @function.macro "@function.macro"))                                         ; preprocessor macros
((tag) @function.method (#eq? @function.method "@function.method"))                                      ; method definitions
((tag) @function.method.call (#eq? @function.method.call "@function.method.call"))                       ; method calls
((tag) @constructor (#eq? @constructor "@constructor"))                                                  ; constructor calls and definitions
((tag) @operator (#eq? @operator "@operator"))                                                           ; symbolic operators (e.g. +, *)
((tag) @keyword (#eq? @keyword "@keyword"))                                                              ; keywords not fitting into specific categories
((tag) @keyword.coroutine (#eq? @keyword.coroutine "@keyword.coroutine"))                                ; keywords related to coroutines (e.g. go in Go, async/await in Python)
((tag) @keyword.function (#eq? @keyword.function "@keyword.function"))                                   ; keywords that define a function (e.g. func in Go, def in Python)
((tag) @keyword.operator (#eq? @keyword.operator "@keyword.operator"))                                   ; operators that are English words (e.g. and, or)
((tag) @keyword.import (#eq? @keyword.import "@keyword.import"))                                         ; keywords for including or exporting modules (e.g. import, from in Python)
((tag) @keyword.type (#eq? @keyword.type "@keyword.type"))                                               ; keywords describing namespaces and composite types (e.g. struct, enum)
((tag) @keyword.modifier (#eq? @keyword.modifier "@keyword.modifier"))                                   ; keywords modifying other constructs (e.g. const, static, public)
((tag) @keyword.repeat (#eq? @keyword.repeat "@keyword.repeat"))                                         ; keywords related to loops (e.g. for, while)
((tag) @keyword.return (#eq? @keyword.return "@keyword.return"))                                         ; keywords like return and yield
((tag) @keyword.debug (#eq? @keyword.debug "@keyword.debug"))                                            ; keywords related to debugging
((tag) @keyword.exception (#eq? @keyword.exception "@keyword.exception"))                                ; keywords related to exceptions (e.g. throw, catch)
((tag) @keyword.conditional (#eq? @keyword.conditional "@keyword.conditional"))                          ; keywords related to conditionals (e.g. if, else)
((tag) @keyword.conditional.ternary (#eq? @keyword.conditional.ternary "@keyword.conditional.ternary"))  ; ternary operator (e.g. ?, :)
((tag) @keyword.directive (#eq? @keyword.directive "@keyword.directive"))                                ; various preprocessor directives and shebangs
((tag) @keyword.directive.define (#eq? @keyword.directive.define "@keyword.directive.define"))           ; preprocessor definition directives
((tag) @punctuation.delimiter (#eq? @punctuation.delimiter "@punctuation.delimiter"))                    ; delimiters (e.g. ;, ., ,)
((tag) @punctuation.bracket (#eq? @punctuation.bracket "@punctuation.bracket"))                          ; brackets (e.g. (), {}, [])
((tag) @punctuation.special (#eq? @punctuation.special "@punctuation.special"))                          ; special symbols (e.g. {} in string interpolation)
((tag) @comment (#eq? @comment "@comment"))                                                              ; line and block comments
((tag) @comment.documentation (#eq? @comment.documentation "@comment.documentation"))                    ; comments documenting code
((tag) @comment.error (#eq? @comment.error "@comment.error"))                                            ; error-type comments (e.g. ERROR, FIXME, DEPRECATED)
((tag) @comment.warning (#eq? @comment.warning "@comment.warning"))                                      ; warning-type comments (e.g. WARNING, FIX, HACK)
((tag) @comment.todo (#eq? @comment.todo "@comment.todo"))                                               ; todo-type comments (e.g. TODO, WIP)
((tag) @comment.note (#eq? @comment.note "@comment.note"))                                               ; note-type comments (e.g. NOTE, INFO, XXX)
((tag) @markup.strong (#eq? @markup.strong "@markup.strong"))                                            ; bold text
((tag) @markup.italic (#eq? @markup.italic "@markup.italic"))                                            ; italic text
((tag) @markup.strikethrough (#eq? @markup.strikethrough "@markup.strikethrough"))                       ; struck-through text
((tag) @markup.underline (#eq? @markup.underline "@markup.underline"))                                   ; underlined text (only for literal underline markup!)
((tag) @markup.heading (#eq? @markup.heading "@markup.heading"))                                         ; headings, titles (including markers)
((tag) @markup.heading.1 (#eq? @markup.heading.1 "@markup.heading.1"))                                   ; top-level heading
((tag) @markup.heading.2 (#eq? @markup.heading.2 "@markup.heading.2"))                                   ; section heading
((tag) @markup.heading.3 (#eq? @markup.heading.3 "@markup.heading.3"))                                   ; subsection heading
((tag) @markup.heading.4 (#eq? @markup.heading.4 "@markup.heading.4"))                                   ; and so on
((tag) @markup.heading.5 (#eq? @markup.heading.5 "@markup.heading.5"))                                   ; and so forth
((tag) @markup.heading.6 (#eq? @markup.heading.6 "@markup.heading.6"))                                   ; six levels ought to be enough for anybody
((tag) @markup.quote (#eq? @markup.quote "@markup.quote"))                                               ; block quotes
((tag) @markup.math (#eq? @markup.math "@markup.math"))                                                  ; math environments (e.g. $ ... $ in LaTeX)
((tag) @markup.link (#eq? @markup.link "@markup.link"))                                                  ; text references, footnotes, citations, etc.
((tag) @markup.link.label (#eq? @markup.link.label "@markup.link.label"))                                ; link, reference descriptions
((tag) @markup.link.url (#eq? @markup.link.url "@markup.link.url"))                                      ; URL-style links
((tag) @markup.raw (#eq? @markup.raw "@markup.raw"))                                                     ; literal or verbatim text (e.g. inline code)
((tag) @markup.raw.block (#eq? @markup.raw.block "@markup.raw.block"))                                   ; literal or verbatim text as a stand-alone block
((tag) @markup.list (#eq? @markup.list "@markup.list"))                                                  ; list markers
((tag) @markup.list.checked (#eq? @markup.list.checked "@markup.list.checked"))                          ; checked todo-style list markers
((tag) @markup.list.unchecked (#eq? @markup.list.unchecked "@markup.list.unchecked"))                    ; unchecked todo-style list markers
((tag) @diff.plus (#eq? @diff.plus "@diff.plus"))                                                        ; added text (for diff files)
((tag) @diff.minus (#eq? @diff.minus "@diff.minus"))                                                     ; deleted text (for diff files)
((tag) @diff.delta (#eq? @diff.delta "@diff.delta"))                                                     ; changed text (for diff files)
((tag) @tag (#eq? @tag "@tag"))                                                                          ; XML-style tag names (e.g. in XML, HTML, etc.)
((tag) @tag.builtin (#eq? @tag.builtin "@tag.builtin"))                                                  ; builtin tag names (e.g. HTML5 tags)
((tag) @tag.attribute (#eq? @tag.attribute "@tag.attribute"))                                            ; XML-style tag attributes
((tag) @tag.delimiter (#eq? @tag.delimiter "@tag.delimiter"))                                            ; XML-style tag delimiters
