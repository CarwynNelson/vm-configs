;; Yay for package management
(require 'package)

;; Set package management sources
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

;; Initialize package manager
(package-initialize)

;; Packages to install
(setq package-list '(evil evil-tabs evil-leader linum-relative fiplr neotree smooth-scrolling solarized-theme php-mode smartparens yasnippet auto-complete powerline powerline-evil magit evil-magit phpunit))

;; Fetch list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;; Install missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; Helpers to allow us to split the config into multiple files
(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))
 
(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

;; Load configuration
(load-user-file "evil.el")
(load-user-file "keybindings.el")
(load-user-file "appearance.el")
(load-user-file "general.el")
(load-user-file "php.el")
(load-user-file "yasnippets.el")
(load-user-file "powerline.el")


;; Get rid of this crap at some point
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
	(phpunit magit auto-complete yasnippet yasnippets smartparens php-mode solarized-theme solarized-emacs smooth-scrolling fiplr linum-relative ## evil-tabs evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
