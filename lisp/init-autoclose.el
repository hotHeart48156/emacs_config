(defun autopair-insert-opening ()
     (interactive)
     (when (autopair-pair-p)
       (setq autopair-action (list 'opening (autopair-find-pair) (point))))
     (autopair-fallback))
;;paredit
;;(require 'autopair)

;;(require 'paredit)
  ;;(defadvice paredit-mode (around disable-autopairs-around (arg))
    ;;"Disable autopairs mode if paredit-mode is turned on"
    ;;ad-do-it
    ;;(if (null ad-return-value)
     ;;   (autopair-mode 1)
      ;;(autopair-mode 0)
;;))
;;(use-package autopair)
;;(require 'autopair)
;;(autopair-global-mode) ;; enable autopair in all buffers
(electric-pair-mode 1)
(setq electric-pair-pairs
     '(
	(?\" . ?\")
	(?\{ . ?\})
	(?\( . ?\))
	))

;;(add-hook 'markdown-mode-hook
;;	  (lambda ()
;;	    (define-key markdown-mode-map "\" electric-pair))
;;)


;;(defun set-newline-and-indent ()
 ;; (local-set-key (kbd "RET") 'newline-and-indent))
;;(add-hook 'c-mode-hook 'set-newline-and-indent)

(defun set-newline-and-indent ()
  (local-set-key (kbd "RET") 'newline-and-indent))
(add-hook 'lisp-mode-hook 'set-newline-and-indent)

(provide 'init-autoclose)
