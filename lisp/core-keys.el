;;; core-keys.el --- Global Keybindings

(use-package avy)

;; Key Chord for fast navigation
(use-package key-chord
  :config
  (key-chord-mode 1)
  (key-chord-define-global "jj" 'avy-goto-word-1)
  (key-chord-define-global "jb" 'helm-buffers-list))

(provide 'core-keys)
;;; core-keys.el ends here
