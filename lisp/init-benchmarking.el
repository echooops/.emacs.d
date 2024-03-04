;;; benchmarking --- startup elapsed time
;;; Commentary:

;;; Code:

(defun spectre/time-subtract-millis (A B)
  "B is before time, A is after time."
  (* 1000.0 (float-time (time-subtract A B))))

(defun spectre/display-startup-time ()
  "Statistic for the startup time."
  (message "init completed in %.2fms with %d garbage collections."
           (spectre/time-subtract-millis after-init-time before-init-time)
	   gcs-done))

(add-hook 'after-init-hook 'spectre/display-startup-time)

(add-hook 'emacs-startup-hook 'spectre/display-startup-time)

(provide 'init-benchmarking)
;;; init-benchmarking.el ends here
