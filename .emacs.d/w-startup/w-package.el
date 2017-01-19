;; -*- coding: utf-8 -*-

; list the repositories containing them
(setq package-archives '(("melpa" . "http://melpa.org/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

(require 'cl)
(loop for file in (directory-files "~/.emacs.d/w-packages" t "\\.el$")
      do (load file nil nil t))

(provide 'w-package)
