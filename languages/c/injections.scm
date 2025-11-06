((comment) @injection.content
  (#match? @injection.content "^(///|//!|/\\*\\*|/\\*!)(.*)")
  (#set! injection.language "doxygen")
  (#set! injection.include-children))
