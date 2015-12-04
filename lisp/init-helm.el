
(require 'helm)
(require 'helm-config)
(require 'helm-eshell)
(require 'helm-files)
(require 'helm-grep)
                                        ;(require 'helm-dash)

(helm-mode 1)
;; (helm-autoresize-mode t)
(setq helm-ff-auto-update-initial-value nil)    ; 禁止自动补全


(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-set-key (kbd "C-x C-b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-s") 'helm-occur)
(global-set-key (kbd "C-x M-f") 'helm-do-grep)

(global-set-key (kbd "C-h SPC") 'helm-all-mark-rings)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z



(setq helm-split-window-in-side-p           t
      helm-move-to-line-cycle-in-source     t
      helm-ff-search-library-in-sexp        t
      helm-M-x-fuzzy-match                  t   ; 模糊搜索
      helm-buffers-fuzzy-matching           t
      helm-locate-fuzzy-match               t
      helm-recentf-fuzzy-match              t
      helm-semantic-fuzzy-match t
      helm-imenu-fuzzy-match   t
      helm-scroll-amount                    8
      helm-autoresize-max-height  40
      helm-autoresize-min-height 30
      helm-ff-file-name-history-use-recentf t)


(setq helm-completing-read-handlers-alist
           '((describe-function . ido)
             (describe-variable . ido)
             (debug-on-entry . helm-completing-read-symbols)
             (find-function . helm-completing-read-symbols)
             (find-tag . helm-completing-read-with-cands-in-buffer)
             (ffap-alternate-file . nil)
             (tmm-menubar . nil)
             (dired-do-copy . nil)
             (dired-do-rename . nil)
             (vc-copy-file-and-rename-buffer . nil)
             (dired-create-directory . nil)
             (find-file . ido)
             (copy-file-and-rename-buffer . nil)
             (rename-file-and-buffer . nil)
             (w3m-goto-url . nil)
             (ido-find-file . nil)
             (ido-edit-input . nil)
             (mml-attach-file . ido)
             (read-file-name . nil)
             (yas/compile-directory . ido)
             (execute-extended-command . ido)
             (minibuffer-completion-help . nil)
             (minibuffer-complete . nil)
             (c-set-offset . nil)
             (wg-load . ido)
             (rgrep . nil)
             (read-directory-name . ido)
             ))


(add-hook 'eshell-mode-hook
          #'(lambda ()
              (eshell-cmpl-initialize)
              (define-key eshell-mode-map [remap pcomplete] 'helm-esh-pcomplete)
              (define-key eshell-mode-map (kbd "M-p") 'helm-eshell-history)))



(provide 'init-helm)





