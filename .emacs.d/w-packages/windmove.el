;; -*- coding: utf-8 -*-
(when (boundp 'windmove-default-keybindings)
  (windmove-default-keybindings 'meta))
(global-set-key (kbd "<S-down>") 'windmove-down)
(global-set-key (kbd "<S-up>") 'windmove-up)
(global-set-key (kbd "<S-left>") 'windmove-left)
(global-set-key (kbd "<S-right>") 'windmove-right)
