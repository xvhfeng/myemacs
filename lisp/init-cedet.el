
(require 'cedet)
(require 'eassist nil 'noerror)


(define-key c-mode-base-map (kbd "c-c c-h") 'eassist-switch-h-cpp)

(provide 'init-cedet)
