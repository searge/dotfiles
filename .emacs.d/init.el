(require 'cl-lib)

(defun system-is-mac ()
  (interactive)
  (string-equal system-type "darwin"))

(defun system-is-linux ()
  (interactive)
  (string-equal system-type "gnu/linux"))

;; Start Emacs as a server
(when (system-is-mac)
    (require 'server)
    (unless (server-running-p)
        (server-start))


;; Start window size
(when (window-system)
    (set-frame-size (selected-frame) 108 58))


;; Підключаємо модуль керування пакетами
(require 'package)

;; Формуємо список джерел звідки будемо тягнути пакети
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")))
;; Завантажуємо і ініціалізуємо пакети
(package-initialize)



;; UI
(tool-bar-mode     -1)

;; Line numbers
(line-number-mode   1)
(global-linum-mode  1)
(column-number-mode 1)
(setq linum-format " %d")

;; syntax
(require 'font-lock)
(global-font-lock-mode 1)
(setq font-lock-maximum-decoration 1)

;; line wrapping
(setq word-wrap 1)
(global-visual-line-mode 1)


;; formats
(setq display-time-24hr-format 1)
(display-time-mode 1)
(size-indication-mode 1)

;; encodings
(setq default-buffer-file-coding-system 'utf-8)
(setq-default coding-system-for-read 'utf-8)
(setq file-name-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8-unix)


;; IDO plugin (Інтерактивний пошук та відкриття файлів)
;; © https://m.habr.com/post/248663/
(require 'ido)
(ido-mode                      1)
(icomplete-mode                1)
(ido-everywhere                1)
(setq ido-vitrual-buffers      1)
(setq ido-enable-flex-matching 1)



;; Org
;; The following lines are always needed.  Choose your own keys.
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-switchb)




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "4d7ad913261ff07dfda94a9e7175e6da08d7c8e96f1cbbcf0862a3c21dd66776" default)))
 '(package-selected-packages (quote (use-package spacemacs-theme ergoemacs-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
