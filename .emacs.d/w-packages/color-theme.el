;; -*- coding: utf-8 -*-

;(unless (package-installed-p 'color-theme-modern)
;  (package-install 'color-theme-modern))
;(require 'color-theme-subdued)
;(color-theme-subdued)
;(load-theme 'subdued t t)
;(enable-theme 'subdued)
;(load-theme 'taylor t t)
;(enable-theme 'taylor)


;(unless (package-installed-p 'molokai-theme)
;  (package-install 'molokai-theme))
;(load-theme 'molokai t t)
;(enable-theme 'molokai)

(unless (package-installed-p 'sublime-themes)
  (package-install 'sublime-themes))
(load-theme 'fogus t)

(provide 'w-color-theme)
