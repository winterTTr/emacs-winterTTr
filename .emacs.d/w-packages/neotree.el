;; -*- coding: utf-8 -*-

(use-package all-the-icons)
(use-package neotree
  :bind 
  ("<f8>" . neotree-toggle)
  :config
  (setq neo-smart-open t)
  (setq neo-theme 
        (if (display-graphic-p) 'icons 'arrow)))