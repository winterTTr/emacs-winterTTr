;; -*- coding: utf-8 -*-
(unless (package-installed-p 'expand-region)
  (package-install 'expand-region))

(autoload 'er/expand-region "expand-region" "auto expand region" t)
(global-set-key (kbd "M-2") 'er/expand-region)
