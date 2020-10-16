; Move all backup files (~) to folder in ~/.emacs.d/backups
(defvar backup-dir "~/.emacs.d/backups/")
(setq backup-directory-alist (list (cons "." backup-dir)))
(setq version-control t     ;; Use version numbers for backups.
      kept-new-versions 10  ;; Number of newest versions to keep.
      kept-old-versions 0   ;; Number of oldest versions to keep.
      delete-old-versions t ;; Don't ask to delete excess backup versions.
      backup-by-copying t)

;Change indetation in c++ files
(setq-default c-basic-offset 4)

;Change indetation in html files
(add-hook 'html-mode-hook
	  (lambda ()
	    ;; Default indentation is usually 2 spaces, changing to 4.
	    (set (make-local-variable 'sgml-basic-offset) 8)))




;Enable parenthesis mode
(show-paren-mode 1)


;Show line numbers by default
;(global-linum-mode t)                                                                                                                                                          

;Possibly to shift windows better
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;Delete section mode (delete selected region)
(delete-selection-mode 1)


;Set color theme
;(when (display-graphic-p)
;  (load-theme 'matrix t))
;(custom-enabled-themes (quote (tsdh-dark)))
(add-to-list 'custom-theme-load-path "/home/chirag/repos/atom-one-dark-theme/")

;;vim like navigation taken from here -                                                                                                                                                                                                                                                  
;;https://www.reddit.com/r/emacs/comments/147h9o/help_me_stop_using_the_arrow_keys/                                                                                                                                                                                                       
(require 'cl)
(defalias 'gsk 'global-set-key)
(defmacro* ilambda ((&rest args) &rest body)
  `(lambda ,args (interactive) ,@body))

(gsk (kbd "M-j") 'next-line)
(gsk (kbd "M-k") 'previous-line)
(gsk (kbd "M-h") 'backward-char)
(gsk (kbd "M-l") 'forward-char)

;; lambdas prevent region from activating                                                                                                                                                                                                                                                \
                                                                                                                                                                                                                                                                                          
(gsk (kbd "M-L") (ilambda () (subword-forward)))
(gsk (kbd "M-H") (ilambda () (subword-backward)))

(gsk (kbd "C-M-h") 'backward-sexp)
(gsk (kbd "C-M-l") 'forward-sexp)
;; If you use paredit, use these instead                                                                                                                                                                                                                                                 \
                                                                                                                                                                                                                                                                                          
(gsk (kbd "C-M-h") 'paredit-backward)
(gsk (kbd "C-M-l") 'paredit-forward)

(gsk (kbd "M-K") 'scroll-up)
(gsk (kbd "M-J") 'scroll-down)




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("7d937147c6dcb7b7693b98cb34af3fa024083c97167e6909c611ddc05b578034" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
