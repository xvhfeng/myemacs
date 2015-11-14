(evil-mode 1) ;以上的是设置启动emacs载入evil 

(setq evil-default-state 'emacs) 
;这个是打开文件后默认进入emacs模式 
;我还要在emacs和vim模式里面切换：C-z，换来换去啊 

(define-key evil-emacs-state-map (kbd "C-o") 'evil-execute-in-normal-state) (evil-mode 1) ;以上的是设置启动emacs载入evil 

(setq evil-default-state 'emacs) 
;这个是打开文件后默认进入emacs模式 
;我还要在emacs和vim模式里面切换：C-z，换来换去啊 

(define-key evil-emacs-state-map (kbd "C-o")
  'evil-execute-in-normal-state)


; 下面4行是设置使用C-d作为ESC按键，这个自己看吧 
(define-key evil-insert-state-map (kbd "C-o") 'evil-change-to-previous-state) 
(define-key evil-normal-state-map (kbd "C-o") 'evil-force-normal-state) 
(define-key evil-replace-state-map (kbd "C-o") 'evil-normal-state) 
(define-key evil-visual-state-map (kbd "C-o") 'evil-exit-visual-state) 

(provide 'init-evil)
