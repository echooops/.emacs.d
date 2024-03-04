;;; tools -- some useful tools
;;; Commentary:

;;; Code:

;; company *****
(use-package company
  :ensure t
  :defer t
  :hook (after-init . global-company-mode))

;; which-key *****
(use-package which-key
  :ensure t
  :defer t
  :hook (after-init . which-key-mode))

;; format-all ***
(use-package format-all
  :ensure t
  :defer t
  :hook (prog-mode . format-all-mode)
  :bind ("C-c f" . format-all-region-or-buffer))

;; iedit **
(use-package iedit
  :ensure t
  :defer t)

;; move-dup **
(use-package move-dup
  :ensure t
  :defer t
  :hook (prog-mode . move-dup-mode)
  :bind (("M-<up>" . move-dup-move-lines-up)
	 ("M-<down>" . move-dup-move-lines-down)))

(provide 'init-tools)
;;; init-tools.el ends here
