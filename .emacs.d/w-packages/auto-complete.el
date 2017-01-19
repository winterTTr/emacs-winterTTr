;; -*- coding: utf-8 -*-

(dolist (package '(pos-tip popup fuzzy auto-complete))
  (unless (package-installed-p package)
    (package-install package)))

;; load auto-complete
(require 'auto-complete-config)
;(add-to-list 'ac-dictionary-directories
;             (w/plugin:expand-file-name "auto-complete-suite/auto-complete/dict"))
(ac-config-default)

;; use pos-tip, which is better than native popup
;; 
;; NOTE:
;; If we do not require pos-tip explicitly, this feature will not be
;; triggered, even we set `ac-quick-help-prefer-pos-tip' to t, which
;; is already the default value. We can see the implementation of
;; `ac-quick-help-use-pos-tip-p' to find the reason.
(require 'pos-tip)
(setq ac-quick-help-prefer-pos-tip t)   ;default is t

;; Quick help will appear at the side of completion menu, so you can
;; easily see the help.
(setq ac-use-quick-help t)
(setq ac-quick-help-delay 1.0)

;; behavior of completion by TAB will be changed as a behavior of
;; completion by RET
;;  - After selecting candidates, TAB will behave as RET
;;  - TAB will behave as RET only on candidate remains
(setq ac-dwim t)                        

;; give a key to trigger ac when it is not automatically triggered
(ac-set-trigger-key "<C-return>")

;; make del also trigger the ac
; (setq ac-trigger-commands (cons 'backward-delete-char-untabify ac-trigger-commands))

;; use fuzzy mode, its interesting
(setq ac-fuzzy-enable t)


;; by default we use 3 to start ac
(setq ac-auto-start 3)


