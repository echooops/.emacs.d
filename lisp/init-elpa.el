;;; elpa --- configs
;;; Commentary:
;;; Code:


;;; Install into separate package dirs for each Emacs version, to prevent bytecode incompatibility
(setq package-user-dir
      (expand-file-name (format "elpa-%s.%s" emacs-major-version emacs-minor-version)
                        user-emacs-directory))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package package
  :hook after-init-hook
  :config
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
;;  (add-to-list 'package-archives '("gnu"   . "http://mirrors.cloud.tencent.com/elpa/gnu/"))
;;  (add-to-list 'package-archives '("melpa" . "http://mirrors.cloud.tencent.com/elpa/melpa/"))
  (unless (bound-and-true-p package--initialized)
    (package-initialize)))

;; Ensure system binaries keyword
(use-package use-package-ensure-system-package
  :ensure t)

(use-package gnu-elpa-keyring-update
  :ensure t
  :defer t)

(use-package auto-package-update
  :ensure t
  :config
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-hide-results t)
  (auto-package-update-maybe))

(provide 'init-elpa)
;;; init-elpa.el ends here
