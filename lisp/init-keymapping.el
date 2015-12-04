
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
(global-set-key (kbd "C-x C-g") 'goto-line)


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

;;代码注释工作，如果有选中区域，则注释或者反注释这个区域
;;如果，没选中区域，则注释或者注释当前行，如果光标在行末，则在行末添加或删除注释
;;;###autoload
(defun joseph-comment-dwim-line (&optional arg)
  "Replacement for the comment-dwim command.
If no region is selected and current line is not blank and we are not at the end of the line,
then comment current line.
Replaces default behaviour of comment-dwim, when it inserts comment at the end of the line."
  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
      (comment-or-uncomment-region (line-beginning-position) (line-end-position))
    (comment-dwim arg)))
(global-set-key (kbd "M-;") 'joseph-comment-dwim-line)

;;%包括括号
(global-set-key "%" 'match-paren)
(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
	((looking-at "\\s\)") (forward-char 1) (backward-list 1))
	(t (self-insert-command (or arg 1)))))

;;临时记号
(global-set-key (kbd "M-[") 'ska-point-to-register)
(global-set-key (kbd "M-]") 'ska-jump-to-register)
(defun ska-point-to-register()
  "Store cursorposition _fast_ in a register. 
Use ska-jump-to-register to jump back to the stored 
position."
  (interactive)
  (setq zmacs-region-stays t)
  (point-to-register 8))

(defun ska-jump-to-register()
  "Switches between current cursorposition and position
that was stored with ska-point-to-register."
  (interactive)
  (setq zmacs-region-stays t)
  (let ((tmp (point-marker)))
        (jump-to-register 8)
        (set-register 8 tmp)))

;; 扩展函数任意扩充                     
(setq hippie-expand-try-functions-list 
      '(try-expand-dabbrev
	try-expand-dabbrev-visible
	try-expand-dabbrev-all-buffers
	try-expand-dabbrev-from-kill
	try-complete-file-name-partially
	try-complete-file-name
	try-expand-all-abbrevs
	try-expand-list
	try-expand-line
	try-complete-lisp-symbol-partially
	try-complete-lisp-symbol))

(global-set-key [(meta ?/)] 'hippie-expand)


(global-set-key (kbd "M-n") 'window-move-down)
(global-set-key (kbd "M-p") 'window-move-up)

(global-set-key (kbd "M-N") 'other-window-move-down)
(global-set-key (kbd "M-P") 'other-window-move-up)

(defun window-move-up (&optional arg)
"Current window move-up 2 lines."
(interactive "P")
(if arg
(scroll-up arg)
(scroll-up 2)))

(defun window-move-down (&optional arg)
"Current window move-down 3 lines."
(interactive "P")
(if arg
(scroll-down arg)
(scroll-down 3)))

(defun other-window-move-up (&optional arg)
"Other window move-up 1 lines."
(interactive "p")
(scroll-other-window arg))

(defun other-window-move-down (&optional arg)
"Other window move-down 2 lines."
(interactive "P")
(if arg
(scroll-other-window-down arg)
(scroll-other-window-down 2)))





(provide 'init-keymapping)
