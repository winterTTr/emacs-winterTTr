;;; dos-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "dos" "dos.el" (22661 46836 0 0))
;;; Generated autoloads from dos.el

(autoload 'dos-mode "dos" "\
Major mode for editing Dos scripts.

The `dos-mode-help' command shows this page.

Start a new script from `dos-template'. Read help pages for Dos commands with
`dos-cmd-help'. Navigate between sections using `imenu'. Run script using
`dos-run' and `dos-run-args'.

\\{dos-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.bat\\'" . dos-mode))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; dos-autoloads.el ends here
