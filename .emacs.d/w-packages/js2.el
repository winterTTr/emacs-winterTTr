;; -*- coding: utf-8 -*-
(unless (package-installed-p 'js2-mode)
  (package-install 'js2-mode))

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))
(setq-default js2-basic-offset 2)
