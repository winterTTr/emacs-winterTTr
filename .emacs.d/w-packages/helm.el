;; -*- coding: utf-8 -*-

(use-package popup
  :config
  (require 'popup))
(use-package recentf
  :config
  (recentf-mode 1))

(use-package helm
  :config
  (require 'helm)
  (require 'helm-config)
  (setq helm-buffers-fuzzy-matching           t
        helm-recentf-fuzzy-match              t
        helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
        helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
        helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
        helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
        helm-ff-file-name-history-use-recentf t)
  (helm-mode 1)
  :bind
  (("M-x"       . helm-M-x)
   ("M-y"       . helm-show-kill-ring)
   ("C-x b"     . helm-mini)
   ("C-c o"     . helm-find-files)
   ("C-x f"     . helm-find-files)
   ("C-x C-f"   . helm-find-files)
   ("C-;"       . helm-mini)
   ;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
   ;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
   ;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
   ("C-c h" . helm-command-prefix)
   :map helm-map
   ("<tab>" . helm-execute-persistent-action)    ; rebind tab to run persistent action
   ("C-i" . helm-execute-persistent-action)      ; rebind tab to run persistent action
   ("C-z" . helm-select-action)                  ; rebind tab to run persistent action
   ))




;(if (and w/os:windowsp (executable-find "perl"))
;    (setq helm-grep-default-command
;          "perl ~/.emacs.d/extra-bin/ack/ack-standalone.pl --smart-case -Hn --no-group --no-color %p %f"
;          helm-grep-default-recurse-command
;          "perl ~/.emacs.d/extra-bin/ack/ack-standalone.pl --smart-case -H --no-group --no-color %p %f")
;  (setq helm-grep-default-command "grep -a -d skip -nH -e %p %f"
;        helm-grep-default-recurse-command "grep -a -d recurse -nH -e %p %f"))



