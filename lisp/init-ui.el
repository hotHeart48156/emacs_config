(use-package emacs
  :config
  (setq display-line-numbers-type 'relative)
  (global-display-line-numbers-mode t)
  )
(use-package tron-legacy-theme
  :config
  (load-theme 'tron-legacy t)
  (setq tron-legacy-theme-dark-fg-bright-comments t)
  (setq tron-legacy-theme-vivid-cursor t)
;;  (setq tron-legacy-theme-softer-bg t)
  )

;;(use-package melancholy-theme
 ;; :ensure t))
;;(load-theme 'melancholy t)

(use-package smart-mode-line
	     :init
	     (setq sml/no-confirm-load-theme t
		   sml/theme 'respectful)
	     (sml/setup))
(provide 'init-ui)
