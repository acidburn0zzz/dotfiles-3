(global-set-key "\C-xt" 'shell)
(global-set-key "\C-x\C-e" 'compile)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\M-w" 'copy-region-as-kill)
(global-set-key "\M-j" 'fill-paragraph)
(global-set-key (kbd "C-S-w") 'kill-region)
(global-set-key "\C-x\C-w" 'kill-region)
(global-set-key "\M-u" 'undo)
(global-set-key "\C-]"          'delete-indentation)
(global-set-key "\M-q" 'query-replace)
(global-set-key "\C-xl" 'goto-line)
(global-set-key "\M-j" 'fill-paragraph)
(global-set-key "\M-\\" 'delete-horizontal-space)
(global-set-key "\C-z" 'scroll-down)
(global-set-key "\C-h" 'next-error)
(global-set-key "\C-c\C-u" 'uncomment-region)
(global-set-key "\C-c\C-c" 'comment-region)
(global-set-key "\C-x\C-u" 'erase-buffer)

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
 '(default ((t (:background "black" :foreground "white" :height 180 :foundry "PT Mono"))))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background dark)) (:foreground "yellow")))))

(put 'erase-buffer 'disabled nil)

(tool-bar-mode -1)

(setq mac-option-key-is-meta nil
      mac-command-key-is-meta t
      mac-command-modifier 'meta
      mac-option-modifier 'none)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(setq compilation-always-kill t)
(setq compilation-scroll-output t)

(cond 
 ((eq window-system 'ns) ; macosx
  ;; Invoke login shells, so that .profile or .bash_profile is read
  (setq shell-command-switch "-lc")))

(setq explicit-bash-args '("--login" "-i"))
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(setq exec-path (append exec-path '("/opt/local/bin")))
