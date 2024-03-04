
;;; Code:

;; all-the-icons
(use-package all-the-icons
  :ensure t
  :if (display-graphic-p))

;; dashboard
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*")))
  (setq dashboard-banner-logo-title "Welcome to Spectre Emacs.")
  (setq dashboard-icon-type 'all-the-icons))

(provide 'init-dashboard)
