
;;; Code:

(defun spectre/time-subtract-millis (b a)
  (* 1000.0 (float-time (time-subtract b a))))

(defun spectre/show-init-time ()
  (message "init completed in %.2fms"
           (spectre/time-subtract-millis after-init-time before-init-time)))

(add-hook 'after-init-hook 'spectre/show-init-time)

(provide 'init-benchmarking)
;;; init-benchmarking.el ends here
