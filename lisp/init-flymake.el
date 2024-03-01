;;; Code

;; Flymake
(use-package flymake
  :hook (prog-mode . flymake-mode)
  :bind (("M-n" . 'flymake-goto-next-error)
	 ("M-p" . 'flymake-goto-prev-error)))

(provide 'init-flymake)
