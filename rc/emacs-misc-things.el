(set-default-font "Meslo LG S")
(set-face-attribute 'default nil :height 105)

(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'default-frame-alist '(width . 170))

;(color-theme-zenburn)
;(color-theme-solarized-light)

(setq auto-compression-mode t)
(setq text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
(setq user-full-name "Artem Artemiev")

(setq make-backup-files nil)
(setq longlines-show-hard-newlines t)
(setq file-name-coding-system 'utf-8)
(fset 'yes-or-no-p 'y-or-n-p)

;; (load-library "time")
;; (setq display-time-24hr-format t
;;       display-time-mail-file t
;;       display-time-form-list (list 'time 'load)
;;       display-time-day-and-date t)
;;(display-time)

(blink-cursor-mode t)

(custom-set-variables 
 '(safe-local-variable-values 
   (quote (
	   (c-file-offsets (substatement-open . 0))
	   (promt-to-byte-compile)
	   (c-indentation-style . k&r)
	   (indent-tabs-mode . nil) ;; tabs mode
	   (folded-file . t)
	   (TeX-open-quote . "<<")
	   (Tex-close-quote . ">>")
	   ))))

(windmove-default-keybindings 'meta) 

(custom-set-variables
 ;; '(display-time-mode t)
 '(indent-tabs-mode nil)       ;; tabs mode
 '(inhibit-startup-message t) 
 '(global-font-lock-mode t)
 '(column-number-mode t)
 '(custom-buffer-done-kill t)
 '(use-dialog-box nil)
 '(uniquify-buffer-name-style (quote forward))
 '(initial-scratch-message nil)
 '(global-linum-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(scroll-bar-mode nil)
 '(delete-selection-mode t)
 '(fill-column 90)
 '(iswitchb-mode 1)
 '(kill-whole-line t)
 '(tab-always-indent t) ;;
 '(indent-tabs-mode nil)
 '(tab-width 8)
 '(default-tab-width 8)
 '(next-line-add-newlines nil)
 '(disabled-command-function nil)
 )
