
;;; flymake-mode --- config
;;; Commentary:
;;; Code:

;; Flymake
(use-package flymake
  :ensure nil
  :hook (prog-mode . flymake-mode)
  :bind (("M-n" . flymake-goto-next-error)
	 ("M-p" . flymake-goto-prev-error)))

(provide 'init-flymake)
;;; init-flymake.el ends here
