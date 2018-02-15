;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'package)
(add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(add-to-list 'load-path "~/.emacs.d/custom")

(require 'setup-general)
(if (version< emacs-version "24.4")
    (require 'setup-ivy-counsel)
  (require 'setup-helm)
  (require 'setup-helm-gtags))
;; (require 'setup-ggtags)
(require 'setup-cedet)
(require 'setup-editing)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


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

(setq-default indent-tab-mode nil)
(setq tab-width 2)


(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)


(load-theme 'molokai t)

;;(set-default-font "")
;;(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-10"))
(set-default-font "DejaVu Sans Mono-10")




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
