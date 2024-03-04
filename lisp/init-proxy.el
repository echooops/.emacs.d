;;; proxy --- intranet restriction
;;; Commentary:

;;; Code:
;; Huawei yellow
(setq  proxyurl-proxy-services
       '(("no_proxy" . "^\\localhost\\|10.*\\)")
	 ("http" . "xx:xx@proxycn2.huawei.com:8080")
	 ("https" . "xx:xx@proxycn2.huawei.com:8080")))

(provide 'init-proxy)
;;; init-proxy.el ends here
