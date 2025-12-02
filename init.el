;;https://melpa.org/#/getting-started
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(setq make-backup-files nil)

;; --- so we can edit this as soon as emacs starts 
(defun my/init-file ()
  (interactive)
  (find-file "/home/terry/.emacs.d/init.el"))
(global-set-key  (kbd "<f5>") #'my/init-file)
;;(global-set-key  (kbd "<f6>") (lambda () (interactive) (find-file "~/src/emacs/ob-sml/ob-sml.el")))

(setq inhibit-startup-screen t)
(setq inhibit-splash-screen t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(set-frame-parameter nil 'fullscreen 'fullboth)

;; (set-foreground-color "white")
;; (set-background-color "black")
;;(load-theme 'deeper-blue)
(load-theme 'modus-operandi-deuteranopia)
;;(load-theme 'wombat)
;; (load-theme 'tango-dark)
;;(load-theme 'leuven-dark)

;;(set-face-attribute 'default nil :height 105)
;;(set-default-font "Inconsolata 12")
;;(set-frame-font "DejaVu Sans Mono-14" nil t)
;;(set-frame-font "monaco 12" nil t)
(set-frame-font "firacode 11" nil t)
;;(set-frame-font "menlo 10" nil t)


(use-package prop-menu :ensure t)

;;(use-package idris2-mode  :ensure t)
(add-to-list 'load-path "~/src/idris2-mode/")
(require 'idris2-mode)

