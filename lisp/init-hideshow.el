


;;代码折叠功能:系统自带功能
(load-library "hideshow")    ;;开启代码折叠功能
(add-hook 'c-mode-hook 'hs-minor-mode)    ;;C文件折叠功能
(add-hook 'c++-mode-hook 'hs-minor-mode)    ;;C++文件折叠功能
(add-hook 'go-mode-hook 'hs-minor-mode)    ;;GO文件折叠功能
(add-hook 'python-mode-hook 'hs-minor-mode)    ;;Python文件折叠功能
(add-hook 'javascript-mode-hook 'hs-minor-mode)    ;;Javascript文件折
(add-hook 'java-mode-hook 'hs-minor-mode)    ;;Javascript文件折叠功能
 (add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
    (add-hook 'perl-mode-hook       'hs-minor-mode)
    (add-hook 'sh-mode-hook         'hs-minor-mode)






(global-set-key (kbd "C--") 'hs-hide-block)    ;;折叠代码 (键绑定)
(global-set-key (kbd "C-=") 'hs-show-block)    ;;打开折叠 (键绑定)
(global-set-key (kbd "C-c C--") 'hs-hide-all)    ;;折叠全部代码 (键绑定)
(global-set-key (kbd "C-c C-=") 'hs-show-all)    ;;展开全部折叠

(provide 'init-hideshow)
