;; -*- coding: utf-8 -*-
(unless (package-installed-p 'highlight-thing)
  (package-install 'highlight-thing))

(global-highlight-thing-mode)
(setq highlighqqqt-thing-delay-seconds 1.5)


