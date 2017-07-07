(require 'neotree)

;; Fuzzy find files
(global-set-key (kbd "C-x f") 'fiplr-find-file)

;; Leader based key bindings
(evil-leader/set-key
  "eb" 'eval-buffer
  "cc" 'toggle-comment-on-line
  "cr" 'comment-or-uncomment-region
  "bd" 'delete-window ;; delete buffer
  "v"  'split-window-right
  "s"  'split-window-below
  "pi" 'package-install
  "1"  'neotree-toggle
  "gs" 'magit-status
  "t"  'phpunit-current-test
  "bp" 'phpunit-current-project ;; stands for build project
  "cl" 'phpunit-current-class)

(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)

(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
