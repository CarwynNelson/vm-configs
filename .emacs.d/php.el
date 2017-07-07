;; Turn on php-mode
(eval-after-load 'php-mode
  '(require 'php-ext))

;; auto complete - might want to swap this out with company-mode
;; as apparently that is better?
(ac-config-default)

;; Smartparens
(require 'smartparens-config)
(smartparens-global-mode)

;; Template for running tests inside of docker container from emacs
;; (defun hyperion-tests ()
;;   "Run tests inside of docker container"
;;   (when (and buffer-file-name (string-match "/hyperion/" buffer-file-name))
;; 	(setq-local phpunit-program "docker")
;; 	(setq-local phpunit-arg '("exec" "-it" "hyperion_php_1" "phpunit"))))
;; (add-hook 'php-mode-hook 'hyperion-tests)
