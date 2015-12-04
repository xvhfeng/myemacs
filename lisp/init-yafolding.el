
(load-file "~/.emacs.d/plugins/yafolding.el")

(require 'yafolding)

(add-hook 'c-mode-hook
          (lambda () (yafolding-mode)))

(define-key yafolding-mode-map (kbd "<C-S-return>") nil)
(define-key yafolding-mode-map (kbd "<C-M-return>") nil)
(define-key yafolding-mode-map (kbd "<C-return>") nil)
(define-key yafolding-mode-map (kbd "C-c <C-return>") 'yafolding-toggle-all)
(define-key yafolding-mode-map (kbd "C-c C--") 'yafolding-hide-parent-element)
(define-key yafolding-mode-map (kbd "C-c C-=") 'yafolding-toggle-element)

(provide 'init-yafolding)
