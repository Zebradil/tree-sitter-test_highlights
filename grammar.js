/**
 * @file TestHighlights grammar for tree-sitter
 * @author German Lashevich <german.lashevich@gmail.com>
 * @license MIT
 */

// grammar.js
module.exports = grammar({
  name: 'test_highlights',

  extras: ($) => [/\s/],

  rules: {
    source_file: ($) => repeat($.line),

    // Match a line: "@tagname" followed by comment
    line: ($) => seq($.tag, optional($.comment)),

    // Capture the tag (e.g. "@variable")
    tag: ($) => /@[a-zA-Z0-9.]+/,

    // Capture the rest of the line as a comment
    comment: ($) => /[^\n]+/,
  },
});
