
(add-to-list
    'load-path 
    (expand-file-name "lisp" user-emacs-directory))

(require 'package)
(add-to-list 'package-archives'
  ("elpa" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives'
  ("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives'
  ("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)



(when (not package-archive-contents)
  (package-refresh-contents))    ;;自动初始化源安装列表
(when (not (package-installed-p 'undo-tree))
  (package-install 'undo-tree))    ;;自动安装撤销插件包
(when (not (package-installed-p 'google-c-style))
  (package-install 'google-c-style))  


;自定义的lisp包
(require 'init-emacs)
(require 'init-keymapping)

;emacs 自带的
(require 'ibuffer)


;安装的插件
(require 'init-google-c-style)





(provide 'init)























