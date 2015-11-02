


(setq current-language-environment "UTF-8")    ;;设置中文环境
(setq locale-coding-system 'utf-8)    ;;设置中文环境
(prefer-coding-system 'utf-8)    ;;优先读取指定文件编码
(setq default-buffer-file-coding-system 'utf-8)    ;;缓冲区编码
(setq default-process-coding-system 'utf-8)    ;;进程输出输入编码
(setq file-name-coding-system 'gb18030)    ;;文件名编码

(set-selection-coding-system 'gb18030)    ;;选择块编码
(set-terminal-coding-system 'utf-8)    ;;终端编码
(set-keyboard-coding-system 'utf-8)    ;;键盘输入编码
(set-default-font "Consolas-11")    ;;设置英文字体
(set-fontset-font (frame-parameter nil 'font)    ;;设置中文字体
                  'han '("微软雅黑" . "unicode-bmp"))


(setq initial-scratch-message nil)    ;;关闭多余缓冲区内文字
(setq-default cursor-type 'bar)    ;;显示细条光标
(setq pop-up-windows nil)    ;;禁止自动弹出窗口
(setq message-log-max nil)    ;;清除"Messages"缓冲区信息
(kill-buffer "*Messages*")    ;;关闭"Messages"缓冲区
(setq ring-bell-function 'ignore)    ;;关闭提示音和闪屏警报
(put 'scroll-left 'disabled nil)    ;;打开水平滚屏功能
(global-undo-tree-mode)    ;;开启反撤销功能
(global-font-lock-mode t)    ;;进行语法加亮
(show-paren-mode t)    ;;打开括号匹配显示模式
(electric-pair-mode t)    ;;开启自带自动补全括号


;; 去掉工具栏
(tool-bar-mode nil)

;;在左边显示行号
(global-linum-mode 'linum-mode)


;;背景设置成黑色，字体是绿色
(set-foreground-color "green")
(set-background-color "black")

(global-font-lock-mode t);语法高亮 

(fset 'yes-or-no-p 'y-or-n-p);以 y/n代表 yes/no，可能你觉得不需要，呵呵。 

(display-time-mode 1);显示时间，格式如下 

(setq display-time-24hr-format t) 
(setq display-time-day-and-date t) 

(tool-bar-mode nil);去掉那个大大的工具栏 

(scroll-bar-mode nil);去掉滚动条，因为可以使用鼠标滚轮了 ^_^ 


(setq mouse-yank-at-point t);支持中键粘贴 

(setq x-select-enable-clipboard t);支持emacs和外部程序的粘贴 


(setq visible-bell t) 
;;关闭烦人的出错时的提示声 
(setq inhibit-startup-message t) 
;;关闭emacs启动时的画面 
 
(setq gnus-inhibit-startup-message t) 
;;关闭gnus启动时的画面 
 
(setq kill-ring-max 200) 
;;设置粘贴缓冲条目数量.用一个很大的kill ring(最多的记录个数). 这样防止我不小心删掉重要的东西 
 
(setq-default auto-fill-function 'do-auto-fill) 
; Autofill in all modes;; 
;(setq fill-column 120) 
;;把 fill-column 设为 60. 这样的文字更好读 
 
(setq-default indent-tabs-mode nil) 
(setq tab-width 4) 
;(setq tab-stop-list ()) 
;;不用 TAB 字符来indent, 这会引起很多奇怪的错误。编辑 Makefile 的时候也不用担心，因为 makefile-mode 会把 TAB 键设置成真正的 TAB 字符，并且加亮显示的。 
 
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*") 
(setq sentence-end-double-space nil) 
;;设置 sentence-end 可以识别中文标点。不用在 fill 时在句号后插入两个空格。 
 
(setq enable-recursive-minibuffers t) 
;;可以递归的使用 minibuffer 
 
(setq scroll-margin 3 scroll-conservatively 10000) 
;;防止页面滚动时跳动， scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动，可以很好的看到上下文。 
 
(setq major-mode 'text-mode) 
;(add-hook 'text-mode-hook 'turn-on-auto-fill) 
;;设置缺省主模式是text，,并进入auto-fill次模式.而不是基本模式fundamental-mode 
 
(setq show-paren-mode t) ;;打开括号匹配显示模式 
(setq show-paren-style 'parenthesis) 
;;括号匹配时可以高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处。 
 
;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。 
(setq mouse-avoidance-mode 'animate) 

(setq auto-image-file-mode t) 
;;让 Emacs 可以直接打开和显示图片。 
 
(auto-compression-mode 1) 
;打开压缩文件时自动解压缩。 
 
(setq global-font-lock-mode t) 
;;进行语法加亮。 
 
(setq-default kill-whole-line t) 
;; 在行首 C-k 时，同时删除该行。

(setq-default indent-tabs-mode nil)    ;;不用"TAB"字符来缩进, 这会引起很多奇怪的错误
(setq-default tab-width 4)    ;;设置缩进为4个字符
(setq-default c-basic-offset 4)    ;;设置C/C++/java缩进位数
(setq c-default-style "linux")    ;;不缩进括号 (缩进方式)
(defun sgml-mode-indent-setup ()
  (setq sgml-basic-offset 4))





(custom-set-faces '(highlight ((((class color) (background light))
  (:background "#fdeded"))))    ;;高亮所在行背景色
 '(show-paren-match ((((class color) (background light))
  (:background nil :foreground "#ff0000" :bold t)))))    ;;括号匹配颜色配置
(set-default 'truncate-lines t)    ;;关闭自动换行功能
(setq default-major-mode 'text-mode)    ;;打开缺省文本模式
(mouse-wheel-mode t)    ;;开启鼠标滚轮
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))    ;;一次滚动一行
(setq mouse-wheel-follow-mouse 't)    ;;鼠标滚动窗口
(setq scroll-step 1
    scroll-conservatively 10000)    ;;平滑滚动
(global-hl-line-mode t)    ;;高亮光标所在行


(icomplete-mode t)    ;;迷你缓冲区自动补全
(setq make-backup-files nil)    ;;不要生成临时文件
(setq isearch-allow-scroll t)    ;;查找时是可以滚动屏幕的
(setq ibuffer-sorting-mode 'recency)    ;;用最近打开模式显示
(setq whitespace-global-mode t)     ;;全局检测多余空格
(setq auto-save-default nil)    ;;关闭备份文件
(setq undo-outer-limit 50000)    ;;撤销限制
(setq gdb-many-windows t)    ;;开启GDB多窗口调试模式
(setq compile-command nil)    ;;默认编译参数 (把nil改成"参数"即可)


(provide 'init-emacs)
