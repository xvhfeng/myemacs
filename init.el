;add the new version cedet first
(load-file "~/.emacs.d/plugins/cedet-1.1/common/cedet.el")

(add-to-list
   'load-path 
  (expand-file-name "lisp" user-emacs-directory))


(add-to-list 'load-path "~/.emacs.d/plugins/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/plugins/el-get/recipes")

;; Simple package names
(el-get-bundle exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(el-get-bundle google-c-style)
(el-get-bundle undo-tree)
(el-get-bundle autopair)
(el-get-bundle markdown-mode)
(el-get-bundle ace-jump-mode )
(el-get-bundle expand-region)
(el-get-bundle multiple-cursors)
(el-get-bundle switch-window)
(el-get-bundle powerline)
(el-get-bundle evil)
(el-get-bundle yasnippet)

;; Locally defined recipe
;;(el-get-bundle helm
 ;; :url "https://github.com/emacs-helm/helm.git"
  ;; :features helm)

;; With initialization code
;;(el-get-bundle zenburn-theme
 ;; :url "https://raw.githubusercontent.com/bbatsov/zenburn-emacs/master/zenburn-theme.el"
  ;;(load-theme 'zenburn t))


;emacs 自带的
(require 'ibuffer)
(require 'cc-mode)



;安装的插件
(require 'init-cedet)
(require 'init-google-c-style)
(require 'init-undo-tree)
(require 'init-autopair)
;(require 'init-helm)
(require 'init-hideshow)
(require 'init-md)
(require 'init-mc)
(require 'init-er)
(require 'init-acejump)
(require 'init-powerline)
(require 'init-iimage)
(require 'init-evil)

;自定义的lisp包
(require 'init-emacs)
(require 'init-keymapping)



(provide 'init)























