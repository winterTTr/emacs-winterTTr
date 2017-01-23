;; -*- coding: utf-8 -*-

(use-package ripgrep
  :config
  (w/prepend-to-exec-path "~/.emacs.d/w-binaries/rg")
  :bind
  ("C-c g" . ripgrep-regexp))
