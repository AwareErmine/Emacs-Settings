;; -*- mode: elisp -*-

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;;;;Org mode configuration
;; Enable Org modemx
(require 'org)
;; Make Org mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen

(load-theme 'deeper-blue t)

(menu-bar-mode -1)  ; Leave this one on if you're a beginner!
(tool-bar-mode -1)

(add-to-list 'load-path (concat user-emacs-directory "lisp/" ))
(load "org-fragtog.el")
;; (require 'org-fragtog)
(add-hook 'org-mode-hook #'org-fragtog-mode)

(define-key org-mode-map "\M-q" 'toggle-truncate-lines)

(add-hook 'org-mode-hook #'turn-on-org-cdlatex)

(setq org-latex-create-formula-image-program 'dvisvgm)

(add-hook 'org-mode-hook 'org-indent-mode)

(require 'org-tempo)

;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-format-latex-options
   '(:foreground default :background default :scale 1.25 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
		 ("begin" "$1" "$" "$$" "\\(" "\\[")))
 '(package-selected-packages '(auctex cdlatex evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

