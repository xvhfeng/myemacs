(require 'multiple-cursors)

(global-set-key (kbd "M-l") 'mc/edit-lines)

(global-set-key (kbd "C-.") 'mc/mark-next-like-this)
    (global-set-key (kbd "C-,") 'mc/mark-previous-like-this)
    (global-set-key (kbd "C-c /") 'mc/skip-to-next-like-this)
(global-set-key (kbd "C-'") 'mc/mark-all-like-this-in-defun)

(provide 'init-multiple-cursors)
