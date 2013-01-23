;; Artem Artemiev 
;; .emacs

(setq custom-file "~/.emacs.d/custom.el")

;; (setenv "PATH" (concat "/home/artemiev/.cabal/bin:" (getenv "PATH")))
(setenv "ERL_LIBS" (concat "/home/artemiev/coding/erlang" (getenv "ERL_LIBS")))
(push "/home/artemiev/coding/erlang" exec-path)
(push "/home/artemiev/.cabal/bin" exec-path)

(load "~/.emacs.d/rc/emacs-common-hooks.el")
(load "~/.emacs.d/rc/emacs-flymake.el")
(load "~/.emacs.d/rc/emacs-erlang.el")

(add-to-list 'load-path "/home/artemiev/.emacs.d/el-get/el-get/")
(add-to-list 'load-path "/home/artemiev/.emacs.d/el-get/")

(require 'el-get)
(setq el-get-byte-compile nil)
(setq el-get-recipe-path '("/home/artemiev/.emacs.d/el-get/el-get/recipes"))
(setq el-get-sources '(magit psvn org-mode auctex scala-mode
			     distel slime bbdb clojure-mode
			     ess emacs-jabber ahg doxymacs
			     emacs-w3m geiser planner remember
			     xml-rpc-el n3-mode yasnippet
			     android-mode elein json tuareg-mode
			     htmlize cmake-mode paredit quack
			     js2-mode oddmuse markdown-mode
			     graphviz-dot-mode google-contacts
			     ghc-mod auto-complete auto-complete-clang
			     auto-complete-emacs-lisp auto-complete-etags
			     auto-complete-latex auto-complete-yasnippet))

(setq art/packages '(psvn 
                     color-theme
                     magit
                     cedet
                     ghc-mod
                     haskell-mode
                     js2-mode
                     auto-complete
                     cmake-mode
                     go-mode
                     auto-complete-extension
                     yasnippet
                     emacs-jabber
                     color-theme-solarized
                     color-theme-zenburn
                     color-theme-zen-and-art
                     color-theme-tangotango
                     color-theme-desert
                     color-theme-sanityinc
                     smex
                     paredit
                     tuareg-mode
                     clojure-mode
                     slime
;                     distel
                     ))

(el-get 'sync art/packages)

;;
(load "~/.emacs.d/rc/emacs-cedet.el")
(load "~/.emacs.d/rc/emacs-gdb.el")
(load "~/.emacs.d/rc/emacs-ccmode.el")
(load "~/.emacs.d/rc/emacs-haskell.el")
(load "~/.emacs.d/rc/emacs-ocaml.el")
;;(load "~/.emacs.d/rc/emacs-distel.el")
(load "~/.emacs.d/rc/emacs-autocomplete.el")

;;
(load "~/.emacs.d/rc/emacs-yasnippet.el")
(load "~/.emacs.d/rc/emacs-server.el")
(load "~/.emacs.d/rc/emacs-tramp.el")
(load "~/.emacs.d/rc/emacs-erc.el")
(load "~/.emacs.d/rc/emacs-jabber.el")
;(load "~/.emacs.d/rc/emacs-modeline.el")
(load "~/.emacs.d/rc/emacs-misc-things.el")
(load "~/.emacs.d/rc/emacs-color-themes.el")

