(require 'org-mode)
(setq org-src-fontify-natively t)
(setq org-aganda-files '("~/org"))
(setq org-capture-templates
      '(
	("t" "Todo" entry(file+headline "~/.emacs.d/gtd.org" "计划")"* TODO [#B] %?\n %i\n" :empty-lines 1)
	)

      )
