((tag
  (name) @_name @constant.comment.brief
  ("(" @punctuation.bracket
    (user) @emphasis.comment.user
    ")" @punctuation.bracket)?
  ":" @punctuation.delimiter
  (text)? @constant.comment.todo.text)
  (#match? @_name "^[/#*;+\\-_ \t]*(@brief)$"))

((tag
  (name) @_name @string.comment.param
  ("(" @punctuation.bracket
    (user) @emphasis.comment.user
    ")" @punctuation.bracket)?
  ":" @punctuation.delimiter
  (text)? @string.comment.info.text)
(#match? @_name "^[/#*;+\\-_ \t]*(@param)$"))

((tag
  (name) @_name @property.comment.return
  ("(" @punctuation.bracket
    (user) @emphasis.comment.user
    ")" @punctuation.bracket)?
  ":" @punctuation.delimiter
  (text)? @property.comment.error.text)
(#match? @_name "^[/#*;+\\-_ \t]*(@return)$"))
