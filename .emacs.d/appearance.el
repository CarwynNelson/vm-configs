;; Don't display the startup message
(setq inhibit-startup-message t)

;; Remove the toolbar
(tool-bar-mode -1)

;; GUI specific settings
(when (display-graphic-p)
  ;; Remove scroll bars
  (set-scroll-bar-mode nil)
  ;; Nice theme
  (load-theme 'solarized-light t))

;; Smooth scrolling (just like our old friend vim)
(require 'smooth-scrolling)
(smooth-scrolling-mode 1)

;; Add some extra line spacing
(setq-default line-spacing 6)
