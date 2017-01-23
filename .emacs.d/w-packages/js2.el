;; -*- coding: utf-8 -*-
(use-package js2-mode
  :mode "\\.js$"
  :interpreter "node"
  :config
  (setq-default js2-basic-offset 2))