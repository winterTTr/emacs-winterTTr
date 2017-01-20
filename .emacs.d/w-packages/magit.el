;; -*- coding: utf-8 -*-
(unless (package-installed-p 'magit)
  (package-install 'magit))

(autoload 'magit-status "magit" "magit" t)


