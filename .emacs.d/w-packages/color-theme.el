;; -*- coding: utf-8 -*-

(unless (package-installed-p 'color-theme)
  (package-install 'color-theme))

(unless (package-installed-p 'color-theme)
  (package-install 'color-theme-modern))

(require 'color-theme)

;; Color theme subdued
;(require 'color-theme-subdued)
;(color-theme-subdued)

(load-theme 'subdued t t)
(enable-theme 'subdued)

(provide 'w-color-theme)
