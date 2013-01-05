(require 'auto-complete)

(setq ac-auto-start nil)
(define-key ac-mode-map (kbd "C-TAB") 'auto-complete)

(defun art/ac-hook ()
  (local-set-key [(control return)] 'auto-complete)
  )

(add-hook 'prog-mode-hook 'art/ac-hook)
(add-hook 'LaTeX-mode-hook 'art/ac-hook)
