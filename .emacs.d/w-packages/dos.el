;; -*- coding: utf-8 -*-

(unless (package-installed-p 'dos)
  (package-install 'dos))

(autoload 'dos-mode "dos" "Edit Dos scripts." t)
(add-to-list 'auto-mode-alist '("\\.bat$" . dos-mode))
(add-to-list 'auto-mode-alist '("\\.cmd$" . dos-mode))
