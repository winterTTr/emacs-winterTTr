;; -*- coding: utf-8 -*-

(unless (package-installed-p 'all-the-icons)
  (package-install 'all-the-icons))

(unless (package-installed-p 'neotree)
  (package-install 'neotree))

(define-key global-map (kbd "<f8>") 'neotree-toggle)
(setq neo-smart-open t)
(setq neo-theme 
      (if (display-graphic-p) 'icons 'arrow))
