;; -*- coding: utf-8 -*-
(require 'w-utils)

(global-set-key [(meta ?/)] 'hippie-expand)
(global-set-key (kbd "<f4>") 'w/kill-buffer-may-have-clients)

;; change C-m and enter
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key "\C-j" 'newline )

;; some useful key binding
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-0") 'delete-window)
(global-set-key (kbd "M-w") 'clipboard-kill-ring-save)
(global-set-key (kbd "<S-insert>") 'clipboard-yank)

;; quick open internal shell
(defun kid-switch-to-shell ()
  (interactive)
  (when (null (cdr (window-list)))
    (split-window-vertically))
  (let ((file buffer-file-name))
    (other-window 1)
    (shell)
    (when file
      (end-of-buffer)
      (when (looking-back shell-prompt-pattern)
        (insert "cd " (file-name-directory file))
        (call-interactively 'comint-send-input)))))
(global-set-key (kbd "<C-S-f6>") 'kid-switch-to-shell)



(defun replace-in-string (what with in)
  (replace-regexp-in-string (regexp-quote what) with in nil 'literal))

;; open file in current buffer from outer explorer
(defun w32-open-current-file-in-explorer ()
  "open the current buffer file in windows explorer"
  (interactive)
  (let ((file buffer-file-name))
    (when file
      (w32-shell-execute
       nil
       "explorer.exe"
       (concat "/e,/select," (replace-in-string "/" "\\" file) )))))
(global-set-key (kbd "<C-f5>") 'w32-open-current-file-in-explorer)

; open external shell from current file directory
(defun w32-open-shell-from-current-file-directory ()
  "open cmd from current file directory"
  (interactive)
  (let ((file buffer-file-name))
    (when (and file (file-name-directory file))
      (w32-shell-execute
       nil
       "cmd.exe"
       (concat "/k cd /d" (file-name-directory file))))))
(global-set-key (kbd "<C-f6>") 'w32-open-shell-from-current-file-directory)

(defun w/w32:copy-current-file-name (&optional prefix)
  (interactive "p")
  (let ((bn (cond
             ((equal prefix 1) (buffer-name))
             ((equal prefix 4) (or (buffer-file-name) (buffer-name)))
             ((equal prefix 16) (if (buffer-file-name)
                                    (file-name-directory (buffer-file-name))
                                  default-directory)))))
    (kill-new bn)
    (message "Buffer name copied: %s" bn)))
(global-set-key (kbd "<M-f5>") 'w/w32:copy-current-file-name)


(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-f") 'isearch-forward)
(define-key isearch-mode-map (kbd "C-f") 'isearch-repeat-forward)



(defun backward-delete-word (arg)
  "Delete characters backward until encountering the beginning of a word.
With argument ARG, do this that many times."
  (interactive "p")
  (delete-region (point) (progn (backward-word arg) (point))))

(global-set-key (kbd "C-M-<backspace>") 'backward-kill-word)
(global-set-key (kbd "M-<backspace>") 'backward-delete-word)


(provide 'w-key)
