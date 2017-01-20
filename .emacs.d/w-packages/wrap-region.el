;; -*- coding: utf-8 -*-

;; wrap-region
(unless (package-installed-p 'wrap-region)
  (package-install 'wrap-region))

(require 'wrap-region)
(wrap-region-global-mode t)
; (wrap-region-add-wrappers
;  '(("$" "$")
;    ("{-" "-}" "#")
;    ("/" "/" nil 'ruby-mode)
;    ("/* " " */" "#" '(java-mode javascript-mode css-mode))
;    ("`" "`" nil '(markdown-mode ruby-mode))))
; (add-to-list 'wrap-region-except-modes 'conflicting-mode)

