(require 'erc)

(require 'erc-join)
(erc-autojoin-mode t)
(setq erc-autojoin-channels-alist
      '(
        ("freenode.net" "#erlang") ;;"#clojure" "#clojure.de" "#muse")
        ("freenode.net" "#haskell")
        ("irc.int.ru" "#unix" "#nginx")
        ;;("irc.fu-berlin.de" "#unix.ru" "#fidorus")
        ;;("fu-berlin.de" "#unix.ru" "#fidorus")
        ))

(require 'erc-lang)

(require 'erc-fill)
(erc-fill-mode t)

(setq erc-user-full-name "Artem Artemiev")
(setq erc-email-userid "art.art.v@gmail.com")

(require 'erc-log)
(setq erc-log-insert-log-on-open nil)
(setq erc-log-channels t)
(setq erc-log-channels-directory "~/.irclogs/")
(setq erc-save-buffer-on-part t)
(setq erc-hide-timestamps nil)

(setq erc-max-buffer-size 20000)

(require 'erc-autoaway)
(setq erc-autoaway-idle-seconds 1200)
(setq erc-autoaway-message "I'm gone (autoaway after %i seconds)")
(setq erc-auto-discard-away t)

(setq erc-auto-query 'buffer)

;; check channels
(erc-track-mode t)
(setq erc-track-exclude-types '("JOIN" "NICK" "PART" "QUIT" "MODE"
                                 "324" "329" "332" "333" "353" "477"))
;; don't show any of this
(setq erc-hide-list '("JOIN" "PART" "QUIT" "NICK"))

(require 'erc-services)
(erc-nickserv-mode 1)
(setq erc-prompt-for-nickserv-password nil)

(require 'erc-menu)

(defun erc-connect ()
  "Connect to IRC."
  (interactive)
  (progn
;; (erc-select :server "irc.int.ru" :port 6667 :nick "art2art")
    (erc-select :server "irc.freenode.net" :port 6667 :nick "art2art")
;; (erc-select :server "irc.fu-berlin.de" :port 6667 :nick "art2art")
  ))

(defun erc-start-or-switch ()
  "Connect to ERC, or switch to last active buffer"
  (interactive)
  (if (get-buffer "irc.freenode.net:6667") ;; ERC already active?
    (erc-track-switch-buffer 1) ;; yes: switch to last active
    (when (y-or-n-p "Start ERC? ") ;; no: maybe start ERC
      (erc :server "irc.freenode.net" :port 6667 :nick "art2art" :full-name "Artem")
      ;; (erc :server "irc.gimp.org" :port 6667 :nick "art2art" :full-name "Artem")
      )))

(global-set-key (kbd "C-c e") 'erc-start-or-switch) ;; ERC

(custom-set-variables
 '(erc-encoding-coding-alist (quote 
                              (
                               ("#clojure-de" . utf-8)
                               ("#debian-russian" . utf-8)
                               ("#altlinux" . utf-8)
                               ("#unix.ru" . utf-8)
                               ("#fidorus" . utf-8))))
 '(erc-nick "art2art")
 '(erc-nick-uniquifier "_")
 '(erc-prompt-for-password nil)
 '(erc-kill-queries-on-quit t)
 '(erc-server-coding-system (quote utf-8))
 )
