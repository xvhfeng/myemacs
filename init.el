
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
(when (not (package-installed-p 'cedet))
  (package-install 'cedet))  
(when (not (package-installed-p 'autopair))
  (package-install 'autopair))  
(when (not (package-installed-p 'multiple-cursors))
  (package-install 'multiple-cursors))
(when (not (package-installed-p 'helm))
  (package-install 'helm))



;自定义的lisp包
(require 'init-emacs)
(require 'init-keymapping)

;emacs 自带的
(require 'ibuffer)
(require 'cc-mode)



;安装的插件
(require 'init-google-c-style)
(require 'init-undo-tree)
(require 'init-autopair)
;(require 'init-helm)
(require 'init-hideshow)
;(require 'init-cedet)





(provide 'init)























