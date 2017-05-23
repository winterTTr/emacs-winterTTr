;; -*- coding: utf-8 -*-

(w/plugin:prepend-to-load-path "dos")
(add-to-list 'auto-mode-alist '("\\.bat\\'" . dos-mode))
(add-to-list 'auto-mode-alist '("\\.cmd\\'" . dos-mode))


