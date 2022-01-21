(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))
	     
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(require 'init-keybind)
(require 'init-startup)
(require 'init-elpa)
(require 'init-kbd)
(require 'init-ui)
(require 'init-package)
(require 'cmake-format)
(require 'init-orgmode)
(require 'init-markdown)
(require 'init-autoclose)
(when  (file-exists-p  custom-file)(load-file  custom-file) )
