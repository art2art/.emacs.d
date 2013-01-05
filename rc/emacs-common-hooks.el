;; common settings for different text & programming modes
(defun art/common-hook ()
  (local-set-key "\C-c:" 'uncomment-region)
  (local-set-key "\C-c;" 'comment-region)
  (local-set-key "\C-c\C-c" 'comment-region)
  (font-lock-mode 1)
  )
(add-hook 'prog-mode-hook 'art/common-hook)

;; show FIXME/TODO/BUG keywords
(defun art/show-prog-keywords ()
  ;; highlight additional keywords
  (font-lock-add-keywords nil '(("\\<\\(FIXME\\|TODO\\|BUG\\):" 1 font-lock-warning-face t)))
  (font-lock-add-keywords nil '(("\\<\\(DONE\\):" 1 font-lock-doc-face t)))
  ;; highlight too long lines
  ;;(font-lock-add-keywords nil '(("^[^\n]\\{120\\}\\(.*\\)$" 1 font-lock-warning-face t)))
  )

(defun art/common-prog-hook ()
  (subword-mode 1)
  (art/show-prog-keywords)
  )
(add-hook 'prog-mode-hook 'art/common-prog-hook)

;; clean trailing whitespaces automatically
(setq art/trailing-whitespace-modes '(haskell-mode lisp-mode scheme-mode erlang-mode))

(defun art/trailing-whitespace-hook ()
  (when (member major-mode art/trailing-whitespace-modes)
    (delete-trailing-whitespace)))
(add-hook 'before-save-hook 'art/trailing-whitespace-hook)

;; untabify some modes
;; (setq art/untabify-modes '(haskell-mode lisp-mode scheme-mode erlang-mode clojure-mode))
;; (defun art/untabify-hook ()
;;   (when (member major-mode art/untabify-modes)
;;     (untabify (point-min) (point-max))))
;; (add-hook 'before-save-hook 'art/untabify-hook)
