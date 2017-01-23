;; -*- coding: utf-8 -*-
(use-package exec-path-from-shell
  :if 
  (memq window-system '(mac ns))
  :config 
  (exec-path-from-shell-initialize))