;; -*- coding: utf-8 -*-
(unless (package-installed-p 'helm)
  (package-install 'helm))

(require 'helm)
(require 'helm-config)

;(helm-autoresize-mode 1)
;helm-autoresize-max-height
;helm-autoresize-min-height

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)



(global-set-key (kbd "C-x b") 'helm-mini)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)

(if (and w/os:windowsp (executable-find "perl"))
    (setq helm-grep-default-command
          "perl ~/.emacs.d/extra-bin/ack/ack-standalone.pl --smart-case -Hn --no-group --no-color %p %f"
          helm-grep-default-recurse-command
          "perl ~/.emacs.d/extra-bin/ack/ack-standalone.pl --smart-case -H --no-group --no-color %p %f")
  (setq helm-grep-default-command "grep -a -d skip -nH -e %p %f"
        helm-grep-default-recurse-command "grep -a -d recurse -nH -e %p %f"))




;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))


(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z


(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))


(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t)


(global-set-key (kbd "C-o") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-mini)

(helm-mode 1)
