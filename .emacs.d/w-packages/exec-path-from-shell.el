;; -*- coding: utf-8 -*-
(unless (package-installed-p 'exec-path-from-shell)
  (package-install 'exec-path-from-shell))

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
