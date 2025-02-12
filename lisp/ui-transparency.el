;; ui-transparency.el - Adjust transparency with arrow keys

(defun my/increase-transparency ()
  "Increase Emacs frame transparency."
  (interactive)
  (let* ((alpha (frame-parameter nil 'alpha))
         (current (if (consp alpha) (car alpha) 100))
         (new (min 100 (+ current 5))))  ;; Increase by 5, max 100
    (set-frame-parameter nil 'alpha (cons new new))
    (message "Transparency: %d" new)))

(defun my/decrease-transparency ()
  "Decrease Emacs frame transparency."
  (interactive)
  (let* ((alpha (frame-parameter nil 'alpha))
         (current (if (consp alpha) (car alpha) 100))
         (new (max 10 (- current 5))))  ;; Decrease by 5, min 10
    (set-frame-parameter nil 'alpha (cons new new))
    (message "Transparency: %d" new)))

(defun my/adjust-transparency ()
  "Enter a transient mode to adjust transparency using arrow keys.
Press C-g to exit."
  (interactive)
  (message "Use ↑ (Up) to increase, ↓ (Down) to decrease. C-g to exit.")
  (set-transient-map
   (let ((map (make-sparse-keymap)))
     (define-key map (kbd "<up>") (lambda () (interactive) (my/increase-transparency)))
     (define-key map (kbd "<down>") (lambda () (interactive) (my/decrease-transparency)))
     map) t))

(global-set-key (kbd "C-c t") 'my/adjust-transparency)

(provide 'ui-transparency)


;;; ui-transparency.el --- Adjust Transparency with Keybindings

;; (defun my/set-transparency (alpha)
;;   "Set frame transparency."
;;   (interactive "nTransparency (0-100): ")
;;   (set-frame-parameter nil 'alpha (list alpha alpha))
;;   (message "Transparency set to %d" alpha))

;; (defun my/increase-transparency ()
;;   "Increase transparency (decrease opacity)."
;;   (interactive)
;;   (let ((alpha (car (frame-parameter nil 'alpha))))
;;     (set-frame-parameter nil 'alpha (list (max 0 (- alpha 5)) (max 0 (- alpha 5))))
;;     (message "Transparency: %d" alpha)))

;; (defun my/decrease-transparency ()
;;   "Decrease transparency (increase opacity)."
;;   (interactive)
;;   (let ((alpha (car (frame-parameter nil 'alpha))))
;;     (set-frame-parameter nil 'alpha (list (min 100 (+ alpha 5)) (min 100 (+ alpha 5))))
;;     (message "Transparency: %d" alpha)))

;; (global-set-key (kbd "C-c <up>") 'my/decrease-transparency)
;; (global-set-key (kbd "C-c <down>") 'my/increase-transparency)

;; (provide 'ui-transparency)
;;; ui-transparency.el ends here


;;; ui-transparency.el - Adjust transparency with arrow keys

;; (defun my/increase-transparency ()
;;   "Increase Emacs frame transparency."
;;   (interactive)
;;   (let* ((alpha (frame-parameter nil 'alpha))
;;          (current (if (consp alpha) (car alpha) 100))
;;          (new (min 100 (+ current 5))))  ;; Increase by 5, max 100
;;     (set-frame-parameter nil 'alpha (cons new new))
;;     (message "Transparency: %d" new)))

;; (defun my/decrease-transparency ()
;;   "Decrease Emacs frame transparency."
;;   (interactive)
;;   (let* ((alpha (frame-parameter nil 'alpha))
;;          (current (if (consp alpha) (car alpha) 100))
;;          (new (max 10 (- current 5))))  ;; Decrease by 5, min 10
;;     (set-frame-parameter nil 'alpha (cons new new))
;;     (message "Transparency: %d" new)))

;; (defun my/adjust-transparency ()
;;   "Enter a transient mode to adjust transparency using arrow keys.
;; Press C-g to exit."
;;   (interactive)
;;   (message "Use ↑ (Up) to increase, ↓ (Down) to decrease. C-g to exit.")
;;   (set-transient-map
;;    (let ((map (make-sparse-keymap)))
;;      (define-key map (kbd "<up>") (lambda () (interactive) (my/increase-transparency)))
;;      (define-key map (kbd "<down>") (lambda () (interactive) (my/decrease-transparency)))
;;      map) t))

;; (global-set-key (kbd "C-c t") 'my/adjust-transparency)

;; (provide 'ui-transparency)
