;; -*- coding: utf-8 -*-
(unless (package-installed-p 'csharp-mode)
  (package-install 'csharp-mode))


(autoload 'csharp-mode "csharp-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.cs$" . csharp-mode))
