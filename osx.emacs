
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

(setq default-major-mode 'lisp-interaction-mode)
(setq compile-command "make -k")
(setq compilation-read-command nil)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 121 :width normal :foundry "bitstream" :family "Bitstream Vera Sans Mono"))))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background dark)) (:foreground "yellow")))))

(put 'erase-buffer 'disabled nil)

(load-file "/usr/local/go/misc/emacs/go-mode.el")

;(menu-bar-mode)
(tool-bar-mode)

;(mac-command-key-is-meta)

(setq mac-option-key-is-meta nil
      mac-command-key-is-meta t
      mac-command-modifier 'meta
      mac-option-modifier 'none)
