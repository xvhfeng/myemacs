
;; copy region or whole line(global-set-key "\M-w"
(global-set-key "\M-w"
(lambda ()
  (interactive)
  (if mark-active
      (kill-ring-save (region-beginning)
      (region-end))
    (progn
     (kill-ring-save (line-beginning-position)
     (line-end-position))
     (message "copied line")))))


;; kill region or whole line
(global-set-key "\C-w"
(lambda ()
  (interactive)
  (if mark-active
      (kill-region (region-beginning)
   (region-end))
    (progn
     (kill-region (line-beginning-position)
  (line-end-position))
     (message "killed line")))))




(global-set-key (kbd "C-c C-k") 'kill-whole-line)
(global-set-key (kbd "C-c C-b") 'set-mark-command)

(defun indent-buffer ()
"Indent the whole buffer."
(interactive)
(save-excursion
  (indent-region (point-min) (point-max) nil)))

(global-set-key (kbd "C-c C-g") 'indent-buffer)
(global-set-key (kbd "C-c C-,") 'beginning-of-buffer)
(global-set-key (kbd "C-c C-.") 'end-of-buffer)




(provide 'init-keymapping)
