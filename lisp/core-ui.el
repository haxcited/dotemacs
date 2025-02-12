;;; core-ui.el --- UI Tweaks and Theme

;; Start Emacs maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Disable GUI elements
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Set font
(set-frame-font "Inconsolata-16" t t)

;; Frame title
(setq frame-title-format '("Emacs"))

;; Theme Configuration
(use-package cyberpunk-theme
  :config (load-theme 'cyberpunk t))

;; Cursor color
(set-cursor-color "#7cfc00")

(provide 'core-ui)
;;; core-ui.el ends here
