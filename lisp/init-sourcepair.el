
(load-file "~/.emacs.d/plugins/sourcepair.el")

(setq sourcepair-source-path    '( "." "../*" ))
(setq sourcepair-header-path    '( "." "include" "../include" "../*"
                                   "Header"  "../Header"))
(setq sourcepair-recurse-ignore '( "CVS" "Obj" "Debug" "Release" "o" ))

(define-key c-mode-base-map (kbd "C-c C-h") 'sourcepair-load)

(provide 'init-sourcepair)

