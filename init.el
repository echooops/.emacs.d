;;; init --- entry
;;; Commentary:

;;; Code:
(defvar cabins-os-win (memq system-type '(ms-dos windows-nt cygwin)))
(defvar cabins-os-mac (eq system-type 'darwin))

;; packages
(add-to-list 'load-path (concat user-emacs-directory "lisp"))
(require 'init-benchmarking)

;; (require 'init-proxy)
(require 'init-elpa)

;; Emacs builtin packages
(require 'init-builtin)
(require 'init-dashboard)

(require 'init-magit)

(require 'init-flymake)

;; Configs for programming languages
(add-hook 'prog-mode-hook (lambda () (setq-local column-number-mode t)))
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'prog-mode-hook 'electric-pair-mode)
(add-hook 'prog-mode-hook 'hs-minor-mode)
(add-hook 'prog-mode-hook 'prettify-symbols-mode)
(add-hook 'prog-mode-hook 'which-function-mode)


(setq custom-file (locate-user-emacs-file "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

(require 'init-tools)
(require 'init-treesit)

(provide 'init)
;;; init.el ends here
