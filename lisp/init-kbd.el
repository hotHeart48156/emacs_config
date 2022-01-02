;;(when *is-mac*
 ;; (setq mac-command-modifier 'meta)
 ;; (setq mac-option-modifier 'none)
 ;; )
(defalias 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "M-/") 'set-mark-command)
;;(global-set-key (kbd "") 'find-file)
(setq show-paren-mode t)
(setq auto-image-file-mode t)
(setq require-final-newline t)
(setq time-stamp-active t)
(setq time-stamp-warn-inactive t)
(setq time-stamp-format "%:y-%02m-%02d %3a %02H:%02M:%02S chunyu")
(setq tab-width 4
indent-tabs-mode t
c-basic-offset 4)




;;(interactive)
;;(x-send-client-message
;;nil 0 nil "_NET_WM_STATE" 32
;;'(2 "_NET_WM_STATE_FULLSCREEN" 0))
;;)
(setq org-display-inline-images t)
(defun my-maximized ()
(interactive)
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
)



;;(defun show-images()
;; (interactive)
;;(org-display-inline-images t t))
;;(global-set-key (kbd "C-c C-x C v" 'show-images))

(provide 'init-kbd)
