((php_only) @injection.content
  (#set! injection.language "php"))

((parameter) @injection.content
  (#set! injection.include-children)
  (#set! injection.language "php"))

((text) @injection.content
  (#set! injection.language "html")
  (#set! injection.combined))

