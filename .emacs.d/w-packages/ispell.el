;; -*- coding: utf-8 -*-

(autoload 'ispell-buffer "ispell" "spell check the current buffer" t)
(when w/os:windowsp
  (w/prepend-to-exec-path "~/.emacs.d/w-binaries/aspell/bin")
  (setq ispell-program-name "aspell"))
(setq ispell-dictionary "british")
