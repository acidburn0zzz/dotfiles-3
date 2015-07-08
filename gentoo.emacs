;(menu-bar-mode)
;(tool-bar-mode)

(global-set-key "\C-xt" 'shell)
(global-set-key "\C-x\C-e" 'compile)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\M-w" 'copy-region-as-kill)
(global-set-key "\M-j" 'fill-paragraph)
(global-set-key (kbd "C-S-w") 'kill-region)
(global-set-key "\M-u" 'undo)
(global-set-key "\M-q" 'query-replace)
(global-set-key "\C-xl" 'goto-line)
(global-set-key "\M-j" 'fill-paragraph)
(global-set-key "\C-z" 'scroll-down)
(global-set-key "\C-]" 'delete-indentation)
(global-set-key "\C-h" 'next-error)

(setq default-major-mode 'lisp-interaction-mode)
(setq compile-command "make -k")
(setq compilation-read-command nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(menu-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 151 :width normal :foundry "misc" :family "fixed"))))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background dark)) (:foreground "yellow")))))

(put 'erase-buffer 'disabled nil)

(require 'package)
;; Add the original Emacs Lisp Package Archive
(add-to-list 'package-archives
             '("elpa" . "http://tromey.com/elpa/"))
;; Add the user-contributed repository
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
