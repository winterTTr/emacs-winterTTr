;; -*- coding: utf-8 -*-

(unless (package-installed-p 'powershell)
  (package-install 'powershell))
;; powershell-mode
;(autoload 'powershell-mode "powershell-mode" nil t)
;(add-to-list 'auto-mode-alist '("\\.ps[12]?$" . powershell-mode))
