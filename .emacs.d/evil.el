;; Use evil mode
(require 'evil)
(evil-mode t)

;; Enable vim-like tabs using evil-tabs
(global-evil-tabs-mode t)

;; Use relative line numbers
(require 'linum-relative)
(global-linum-mode t)
(linum-on)
(linum-relative-on)

;; Our precious leader key
(require 'evil-leader)
(global-evil-leader-mode)
(setq evil-leader/leader ",")

;; Make magit and evil mode play nicely
(require 'evil-magit)
