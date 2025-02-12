;;; core-editing.el --- Editing Enhancements

;; Enable parenthesis matching
(use-package paren
  :config (show-paren-mode 1))

;; Markdown Mode
(use-package markdown-mode
  :mode ("\\.md\\'" . gfm-mode))

;; YAML mode
(use-package yaml-mode)

(provide 'core-editing)
;;; core-editing.el ends here
