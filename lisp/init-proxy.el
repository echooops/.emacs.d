;;; proxy --- intranet restriction
;;; Commentary:

;;; Code:
;; Huawei yellow
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3") ; 不加这一句可能有问题
(setq url-proxy-services
      '(("no_proxy" . "^\\localhost\\|10.*\\)")
	("http" . "xx:xx@proxycn2.huawei.com:8080")
	("https" . "xx:xx@proxycn2.huawei.com:8080")))

(provide 'init-proxy)
;;; init-proxy.el ends here
