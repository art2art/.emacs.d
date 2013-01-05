;; Artem Artemev
;; art.art.v@gmail.com

(require 'yasnippet) 
(add-to-list 'yas/snippet-dirs "/home/art/.emacs.d/snippets")
(yas/global-mode 1)

;(eval-after-load 'yasnippet
;  '(progn
;    (add-to-list 'yas/snippet-dirs "/home/art/.emacs.d/snippets")
;    (yas/load-snippet-dirs)))
;; hook for automatic reloading of changed snippets
;;(defun art/update-yasnippets-on-save ()
;;  (when (string-match "/snippets" buffer-file-name)
;;    (yas/load-snippet-dirs)
;;    (yas/reload-all)
;;    ))

;;(add-hook 'after-save-hook 'art/update-yasnippets-on-save)

