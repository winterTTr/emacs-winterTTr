;; -*- coding: utf-8 -*-

(use-package all-the-icons)
(use-package neotree
  :bind 
  ("<f8>" . neotree-toggle)
  :config
  (setq neo-smart-open t
        neo-window-fixed-size nil
        neo-show-hidden-files t
        neo-cwd-line-style 'button
        neo-auto-indent-point t
        neo-vc-integration '(face char)
        neo-window-width 40)
  (setq neo-theme 
        (if (display-graphic-p) 'icons 'arrow)))
