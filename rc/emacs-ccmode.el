(require 'cc-mode)

(add-to-list 'load-path "~/.emacs.d/other-projects/c-eldoc")
(load "c-eldoc")
(setq c-eldoc-includes "-I~/exp/include -I./ -I../ ")

;; customisation of cc-mode
(defun art/c-mode-common-hook ()
  ;; style customization
  (c-set-offset 'member-init-intro '++)
  (setq tab-width 4)
  (setq   indent-tabs-mode t)
  (c-set-offset 'substatement-open 0)
  (c-set-style "bsd")
  (setq c-basic-offset 4)
  (c-toggle-auto-hungry-state 0)
  ;; minor modes
  (auto-fill-mode 1)
  (c-turn-on-eldoc-mode)
  (gtags-mode 1)
  (hs-minor-mode 1)
  ;; local keys
  (local-set-key [return] 'newline-and-indent)
  )
(add-hook 'c-mode-common-hook 'art/c-mode-common-hook)
(add-hook 'c-mode-common-hook 'art/common-hook)

(require 'info-look)
(info-lookup-add-help
 :mode 'c-mode
 :regexp "[^][()'\" \t\n]+"
 :ignore-case t
 :doc-spec '(("(libc)Symbol Index" nil nil nil)))

(defun fp-c-mode-routine ()
  (local-set-key "\M-q" 'rebox-comment))
(add-hook 'c-mode-hook 'fp-c-mode-routine)

(setq-default c-default-style (quote ((java-mode . "java") (other . "gnu"))))

(add-to-list 'auto-mode-alist '("\\.ipp$" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.h$" . c++-mode))
