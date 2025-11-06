((comment) @injection.content
  (#match? @injection.content "^(///|//!|/\\*\\*|/\\*!)(.*)")
  (#set! injection.language "doxygen")
  (#set! injection.include-children))

(raw_string_literal
  delimiter: (raw_string_delimiter) @injection.language
  (raw_string_content) @injection.content)
