;;; tools -- some useful tools
;;; Commentary:

;;; Code:
;; company *****
(use-package company
  :ensure t
  :init (global-company-mode)
  :config
  (setq company-minimum-prefix-length 1) ; 只需敲 1 个字母就开始进行自动补全
  (setq company-tooltip-align-annotations t)
  (setq company-idle-delay 0.0)
  (setq company-show-numbers t) ;; 给选项编号 (按快捷键 M-1、M-2 等等来进行选择).
  (setq company-selection-wrap-around t)
  (setq company-transformers '(company-sort-by-occurrence))) ; 根据选择的频率进行排序，读者如果不喜欢可以去掉

;; company-box
(use-package company-box
  :ensure t
  :if window-system
  :hook (company-mode . company-box-mode))

;; TabNine
;; AI 自动补全
;; 重启 Emacs，输入命令：M-x company-tabnine-install-binary，来安装 TabNine 的后台程序
;; Tip 1：想要打开 TabNine 的设置页面只需要在任意位置输入：tabnine::config，随后会弹出一个浏览器窗口显示 TabNine 的相关设置。
;; Tip 2：TabNine 学生认证可以免费获得 TabNine Pro 的使用资格，包括更多的备选项等。
(use-package company-tabnine
  :ensure t
  :init (add-to-list 'company-backends #'company-tabnine))

;; which-key *****
(use-package which-key
  :ensure t
  :defer t
  :hook after-init)

;; format-all ***
(use-package format-all
  :ensure t
  :defer t
  :hook prog-mode
  :bind (("C-c f" . format-all-region-or-buffer)))

;; iedit **
(use-package iedit
  :ensure t
  :defer t)

;; move-dup **
(use-package move-dup
  :ensure t
  :defer t
  :hook prog-mode
  :bind (("C-j p" . move-dup-move-lines-up)
	 ("C-j n" . move-dup-move-lines-down)))

;; amx **
;; 每次将最常用命令的显示在前面
(use-package amx
  :ensure t
  :hook after-init)

;; ace-window **
(use-package ace-window
  :ensure t
  :bind (("C-x o" . ace-window11)))

;; mwim ****
(use-package mwim
  :ensure t
  :bind (("C-a" . mwim-beginning-of-code-or-line)
	 ("C-e" . mwim-end-of-code-or-line)))

;; undo-tree ****
(use-package undo-tree
  :ensure t
  :init (global-undo-tree-mode)
  :custom
  (undo-tree-auto-save-history nil))

;; smart-mode-line
(use-package smart-mode-line
  :ensure t
  :init (sml/setup))

;; avy *****
(use-package avy
  :ensure t
  :bind
  (("C-j SPC" . avy-goto-char-timer)))

;; marginalia **
;; 给命令添加注解
(use-package marginalia
  :ensure t
  :hook after-init
  :bind (:map minibuffer-local-map ("M-A" . marginalia-cycle)))

;; embark ?

;; hydra ?

;; multiple-cursors ?

;; tiny ?

;; highlight-symbol **
(use-package highlight-symbol
  :ensure t
  :init (highlight-symbol-mode)
  :bind ("<f5>" . highlight-symbol)) ;; 按下 F5 键就可高亮当前符号

;; rainbow-delimiters ?
(use-package rainbow-delimiters
  :ensure t
  :defer t
  :hook prog-mode)

(provide 'init-tools)
;;; init-tools.el ends here
