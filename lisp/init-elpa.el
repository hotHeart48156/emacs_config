(require 'package)
(setq package-archives '(("gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/")
			 ("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")		       
			 ("melpa-stable" . "http://mirrors.ustc.edu.cn/elpa/melpa-stable/")
                         ("org" . "http://mirrors.ustc.edu.cn/elpa/org/")))

(when (not package-archive-contents)
  (package-refresh-contents))
  ;;(package-autoremove)

(unless (bound-and-true-p package--initialized) ;; To avoid warnings on 27
  (package-initialize))

(unless package-archive-contents
  (package-refresh-contents))
  (package-install-selected-packages)
;; settings for use-package package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-always-ensure t
      use-package-always-defer t
      use-package-expand-minimally t
      use-package-verbost t
      )
(provide 'init-elpa)


