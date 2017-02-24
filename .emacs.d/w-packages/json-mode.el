;; -*- coding: utf-8 -*-

(use-package json-mode
  :mode ("\\.json$" . json-mode)
  :config
  (setq json-reformat:indent-width 2)
  (setq js-indent-level 2))

