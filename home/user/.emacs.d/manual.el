
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;;(desktop-save-mode 1)


;; (powerline-default-theme)

(global-linum-mode 1)
(setq linum-format "%d ")

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(require 'helm-fuzzy-find)

;;(require 'whitespace)
;;(setq whitespace-style '(tabs spaces newline))
;;(setq whitespace-line-column 120)
;;(global-whitespace-mode t)

(set-face-attribute 'default nil :height 100)

;;(setq molokai-theme-kit t)

(setq default-input-method "cyrillic-yawerty")
