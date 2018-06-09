;; Перевірка ОС на старті програми
;; налашт. взяв звідси: http://www.jesshamrick.com/2013/03/31/macs-and-emacs/

(defun system-is-mac ()
  (interactive)
  (string-equal system-type "darwin"))

(defun system-is-linux ()
  (interactive)
  (string-equal system-type "gnu/linux"))

;; `nil` and `t` for `false` and `true`, respectively. This apparently does not work in Cocoa Emacs. Replace `nil` with `-1` and `t` with `1` and this should fix configuration options that seem to have stopped working.

; set PATH
(setenv
 "PATH" (concat
   "$HOME/bin:"
   "/bin:"
   "/usr/bin:"
   "/sbin:"
   "/usr/sbin:"
   "/usr/local/bin:"
   "/usr/local/sbin"))

; Set PYTHONPATH
(setenv "PYTHONPATH" "$HOME/anaconda3/bin:")

;; Enable installation of packages from MELPA by adding an entry to package-archives after (require 'package) and before the call to package-initialize in your init.el or .emacs file:
;; packages
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("marmalade" . "http://marmalade-repo.org/packages/")
        ("melpa" . "http://melpa.org/packages/")))

;; (package-refresh-contents)



;; Start window size
(when (window-system)
    (set-frame-size (selected-frame) 108 58))

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

;; OS copy-paste https://github.com/igrishaev/dotfiles/blob/master/.emacs
(defun pbcopy ()
  (interactive)
  (call-process-region (point) (mark) "pbcopy")
  (setq deactivate-mark 1))

(defun pbpaste ()
  (interactive)
  (call-process-region (point) (if mark-active (mark) (point)) "pbpaste" 1 1))

(defun pbcut ()
  (interactive)
  (pbcopy)
  (delete-region (region-beginning) (region-end)))

(global-set-key (kbd "C-c c") 'pbcopy)
(global-set-key (kbd "C-c v") 'pbpaste)
(global-set-key (kbd "C-c x") 'pbcut)


;; Org-mode settings
(require 'org)
(setq system-time-locale "C")
(setq org-agenda-skip-deadline-if-done 1)
(setq org-agenda-skip-scheduled-if-done 1)
(global-set-key (kbd "C-c t") 'org-timeline)
(setq calendar-week-start-day 1)
(add-to-list 'auto-mode-alist '("\\.org$" . Org-mode)) ;; ассоциируем *.org файлы с org-mode


;; Система ↓
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes '(tsdh-dark))
 '(package-selected-packages '(rainbow-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
