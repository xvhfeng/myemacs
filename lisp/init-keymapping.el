
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


 ;;我们可以通过C-t加上指定字符向后跳，
;;后者C-u C-t向前跳。比如C-t w w w w 一直往后跳到后续的w处。
(defun my-go-to-char (n char)
  "Move forward to Nth occurence of CHAR.
Typing `my-go-to-char-key' again will move forwad to the next Nth
occurence of CHAR."
  (interactive "p\ncGo to char: ")
  (let ((case-fold-search nil))
    (if (eq n 1)
        (progn                            ; forward
          (search-forward (string char) nil nil n)
          (backward-char)
          (while (equal (read-key)
                        char)
            (forward-char)
            (search-forward (string char) nil nil n)
            (backward-char)))
      (progn                              ; backward
        (search-backward (string char) nil nil )
        (while (equal (read-key)
                      char)
          (search-backward (string char) nil nil )))))
  (setq unread-command-events (list last-input-event)))
(global-set-key (kbd "C-t") 'my-go-to-char)


(global-set-key (kbd "C-x M-o") 'delete-other-windows)
(global-set-key (kbd "C-x M-v") 'split-window-below)
(global-set-key (kbd "C-x M-h") 'split-window-right)
(global-set-key (kbd "C-x M-s") 'delete-window)


;对换两个windows中的buffer
(defun transpose-buffers (arg)
  "Transpose the buffers shown in two windows."
  (interactive "p")
  (let ((selector (if (>= arg 0) 'next-window 'previous-window)))
    (while (/= arg 0)
      (let ((this-win (window-buffer))
            (next-win (window-buffer (funcall selector))))
        (set-window-buffer (selected-window) next-win)
        (set-window-buffer (funcall selector) this-win)
        (select-window (funcall selector)))
      (setq arg (if (plusp arg) (1- arg) (1+ arg))))))
(global-set-key (kbd "C-x M-b") 'transpose-buffers)









(provide 'init-keymapping)
