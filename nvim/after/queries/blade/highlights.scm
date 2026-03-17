(directive) @keyword
(directive_start) @keyword
(directive_end) @keyword
(comment) @comment

[
  "{{"
  "}}"
  "{!!"
  "!!}"
] @punctuation.bracket

(bracket_start) @punctuation.bracket
(bracket_end) @punctuation.bracket
(keyword) @keyword
(conditional_keyword) @keyword
(loop_operator) @keyword
