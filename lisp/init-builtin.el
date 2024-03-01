;;; Code

;; Emacs builtin packages
(setq-default auto-window-vscroll nil
	      default-directory "~"
	      default-text-properties '(line-spacing 0.2 line-height 1.2) ;default line height
	      frame-title-format "%b"
	      help-window-select t
	      initial-major-mode 'fundamental-mode
	      inhibit-startup-screen t ; disable the startup screen splash
	      isearch-allow-motion t
	      isearch-lazy-count t
	      kill-whole-line t
	      mode-line-compact t
	      make-backup-files nil	; disable backup file
	      read-process-output-max (* 4 1024 1024)
	      require-final-newline t
	      scroll-conservatively 1000
	      show-trailing-whitespace t
	      system-time-locale "C"
	      use-short-answers t)

;; `global-auto-revert-mode' is provided by autorevert.el (builtin)
(add-hook 'after-init-hook 'global-auto-revert-mode)

;; auto save to the visited file (provided by `files.el')
(add-hook 'after-init-hook 'auto-save-visited-mode)

;; Delete Behavior
;; `delete-selection-mode' is provided by delsel.el (builtin)
(add-hook 'after-init-hook 'delete-selection-mode)

;; visual-line-mode
(add-hook 'after-init-hook 'global-visual-line-mode)

;; pixel-scroll-precise-mode
(add-hook 'after-init-hook 'pixel-scroll-precision-mode)

;; fido-mode
;; `fido-mode' is provided by icomplete.el
(use-package icomplete
  :hook (after-init . fido-mode)
  :config (setq completions-detailed t))

;; Highlight Current Line
(use-package hl-line
  :when (display-graphic-p)
  :hook (prog-mode . hl-line-mode))

;; ibuffer
(defalias 'list-buffers 'ibuffer)


(provide 'init-builtin)
