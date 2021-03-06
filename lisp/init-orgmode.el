(clear-abbrev-table global-abbrev-table)

(define-abbrev-table 'global-abbrev-table
  '(
    ("expb" ":PROPERTIES \n:EXPORT_FILE_NAME:index\n:EXPORT_HUGO_BUNDLE")
    ("linkout" "[[link][]]\n");;link out file
    ("linkin" "[[#my-custom-id]]");;link in file
    ("todot" "#+TODO: TODO(t)|DONE(d)");;todothing
    ("todoa" "#+TODO:[#A] Write Something");;todothing
    ("todob" "#+TODO:[#B] Write Something");;todothing
    ("todoc" "#+TODO:[#c] Write Something");;todothing
    ("ifile" "[[file:FilePath]]")
    ))

(set-default 'abbrev-mode t)
(setq save-abbrevs nil)
(add-hook 'markdown-mode-hook 'pandoc-mode)
(provide 'init-orgmode)
