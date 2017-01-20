;; -*- coding: utf-8 -*-

;; yasnippet
(unless (package-installed-p 'yasnippet)
  (package-install 'yasnippet))

(require 'yasnippet)
(yas-global-mode 1)
;(yas-load-directory "~/.emacs.d/elpa/yasnippet-20161221.1953/snippets/"))

