;; -*- coding: utf-8; lexical-binding: t; -*-
;; (advice-add #'package-initialize :after #'update-load-path)

;; Without this comment emacs25 adds (package-initialize) here
;; (package-initialize)
(require 'ccls)
(require 'lsp-mode)
(require 'lsp-ui)
(require 'company-lsp)
;; (setq package-archives '(("gnu"   . "http://mirrors.163.com/elpa/gnu/")
;;			                            ("melpa" . "http://mirrors.163.com/elpa/melpa/")))
(add-hook 'c++-mode-hook #'lsp)
(add-hook 'c-mode-hook #'lsp)

;; (require 'use-package)
;; (use-package lsp-mode :commands lsp)
;; (use-package lsp-ui :commands lsp-ui-mode)
;; (use-package company-lsp :commands company-lsp)

;; (use-package ccls
;;   :hook ((c-mode c++-mode objc-mode cuda-mode) .
;;     (lambda () (require 'ccls) (lsp))))

(setq ccls-executable "/usr/bin/ccls")

(provide 'init-lsp-mode)
