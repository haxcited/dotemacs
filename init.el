;;; init.el --- Modernized Emacs Configuration

;; Disable `package.el` in favor of `straight.el`
(setq package-enable-at-startup nil)

;; Ensure Emacs finds custom modules
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; Load Core Modules
(require 'core-packages)      ;; straight.el and use-package setup
(require 'core-ui)            ;; UI settings
(require 'core-keys)          ;; Keybindings
(require 'core-navigation)    ;; Helm, recentf, scrolling
(require 'core-editing)       ;; Editing enhancements
(require 'core-scratch)       ;; Persistent scratch buffer
(require 'ui-transparency)    ;; Transparency functions

(provide 'init)
;;; init.el ends here
