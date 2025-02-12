;;; core-navigation.el --- Navigation and File Management

;; Better Scrolling
(setq scroll-error-top-bottom t)
(setq scroll-preserve-screen-position t)

;; Enable recent files
(use-package recentf
  :config
  (setq recentf-max-menu-items 60)
  (recentf-mode 1))

;; Helm for navigation
(use-package helm
  :bind (("C-x C-f" . helm-find-files)
         ("M-x" . helm-M-x)
         ("C-x C-r" . helm-mini))
  :config (setq helm-mini-default-sources '(helm-source-recentf
                                            helm-source-bookmarks
                                            helm-source-buffer-not-found)))

(provide 'core-navigation)
;;; core-navigation.el ends here
