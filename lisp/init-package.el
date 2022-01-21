(use-package restart-emacs)
;;(use-package crux :bind("C-c k" . crux-smart-kill-line))
(use-package hungry-delete
  :bind(("C-c DEL" . hungry-delete-backward))
  :bind(("C-c d" . hungry-delete-forward))
  )
(use-package drag-stuff
  :bind(
	("<M-up>" . 'drug-stuff-up)
	("<M-down>" . 'drug-stuff-down)
	))

(use-package evil
  
  )
;;(evil-mode 1)
(use-package ace-window
  :bind(("M-o" . 'ace-window)))
;; Settings for company
(use-package company
  :diminish
  :defines (company-dabbrev-ignore-case company-dabbrev-downcase)
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  (add-hook 'prog-mode-hook 'company-mode)
  (add-hook 'cmake-mode-hook 'company-mode)
  )
;;如果apt安装的是clang那么命令就是clang
(require 'eglot)
(add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd-12"))
(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)
(setq company-global-modes '(not org-mode))
;;(setq company-clang-executable  "/usr/bin/clangd-12")
(use-package rust-mode)
(use-package lsp-mode
  :hook(
	(python-mode . lsp-deferred)
	(c++-mode . lsp-deferred)
	(rust-mode . lsp-deferred)
	(lsp-mode . lsp-enable-which-key-integration)
	)
  :commands(lsp lsp-deferred)
  )
;;rustup component add rls
;;(setq lsp-rust-server 'rust-analyzer)  
;;(after! rustic
;;(setq lsp-rust-server 'rust-analyzer)
;;(setq rustic-lsp-server 'rust-analyzer)
;;M-x lsp-describe-session and lsp-workspace-folders-add/remove
 ;;Settings for which-key - suggest next key
(use-package which-key
  :defer nil
  :diminish
  :init (which-key-mode)
  )


(use-package all-the-icons)

;; Org Mode
(setq org-hide-leading-stars t
      org-startup-indented t)

;; Recent Files
(add-hook 'after-init-hook (lambda ()
			     (recentf-mode 1)
			     (add-to-list 'recentf-exclude '("~\/.emacs.d\/elpa\/"))))
(setq-default recentf-max-menu-items 20
	      recentf-max-saved-items 20)




(provide 'init-package)
