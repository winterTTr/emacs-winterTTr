;; -*- coding: utf-8 -*-
(require 'w-utils)

(with-eval-after-load "em-hist"
  (if (boundp 'eshell-save-history-on-exit)
      (setq eshell-save-history-on-exit t))
  (if (boundp 'eshell-ask-to-save-history)
      (setq eshell-ask-to-save-history 'always)))


;; If you would prefer to use the built-in commands instead of the external commands
(setq eshell-prefer-lisp-functions nil)


(defun wttr/eshell:git-branch-string (path)
  "Returns current git branch as a string, or the empty string if
PATH is not in a git repo (or the git command is not found)."
  (interactive)
  (when (and (eshell-search-path "git")
             (locate-dominating-file (expand-file-name path) ".git"))
    (let ((git-output (shell-command-to-string (concat "git branch | grep '\\*' | sed -e \"s/^\\* //\""))))
      (if (> (length git-output) 0) (substring git-output 0 -1) ""))))


(setq eshell-prompt-function
      (lambda ()
        (concat
         (abbreviate-file-name (eshell/pwd))
         (let ((branch (wttr/eshell:git-branch-string (eshell/pwd))))
           (if branch (concat " ➦" branch ) ""))
         "\n"
         "> ")))

(setq eshell-prompt-regexp "^> ")

(add-hook 'eshell-mode-hook
          #'(lambda ()
              (define-key eshell-mode-map (kbd "C-c C-l")  'helm-eshell-history)))


(provide 'w-eshell)
