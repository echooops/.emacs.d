;;; Code:


;;; Install into separate package dirs for each Emacs version, to prevent bytecode incompatibility
(setq package-user-dir
      (expand-file-name (format "elpa-%s.%s" emacs-major-version emacs-minor-version)
                        user-emacs-directory))

(use-package package
  :hook after-init-hook
  :config
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
  (unless (bound-and-true-p package--initialized)
    (package-initialize)))

(provide 'init-elpa)

