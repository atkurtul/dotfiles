
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq inhibit-startup-screen t
      initial-scratch-message "")

(setq visual-bell nil)

(setq visible-bell       nil
      ring-bell-function #'ignore)

(setq backup-inhibited t
      auto-save-default nil)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(global-set-key (kbd "C-`") 'shell)
(global-set-key (kbd "C-~") (kbd  "C-x 0"))

(global-set-key (kbd "<C-mouse-5>") 'text-scale-decrease)
(global-set-key (kbd "<C-mouse-4>") 'text-scale-increase)

(setq kill-buffer-query-functions
  (remq 'process-kill-buffer-query-function
         kill-buffer-query-functions))
(fset 'yes-or-no-p 'y-or-n-p)
(setq confirm-nonexistent-file-or-buffer nil)
(set-frame-font "Consolas-14" t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#1D252C" "#D95468" "#8BD49C" "#EBBF83" "#5EC4FF" "#E27E8D" "#70E1E8" "#A0B3C5"])
 '(custom-safe-themes
   (quote
    ("5078e1845735a69b21b5effe083998dc368853320f449530c2616cf70bc3c47b" "990e24b406787568c592db2b853aa65ecc2dcd08146c0d22293259d400174e37" "c4bdbbd52c8e07112d1bfd00fee22bf0f25e727e95623ecb20c4fa098b74c1bd" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" default)))
 '(fci-rule-color "#56697A")
 '(jdee-db-active-breakpoint-face-colors (cons "#10151C" "#5EC4FF"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#10151C" "#8BD49C"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#10151C" "#41505E"))
 '(objed-cursor-color "#D95468")
 '(package-selected-packages
   (quote
    (exwm cargo caml cyberpunk-theme gandalf-theme rust-mode ac-c-headers abyss-theme ac-dcd evil syntax-subword ## doom-themes lsp-mode auto-complete arc-dark-theme)))
 '(pdf-view-midnight-colors (cons "#A0B3C5" "#1D252C"))
 '(rustic-ansi-faces
   ["#1D252C" "#D95468" "#8BD49C" "#EBBF83" "#5EC4FF" "#E27E8D" "#70E1E8" "#A0B3C5"])
 '(vc-annotate-background "#1D252C")
 '(vc-annotate-color-map
   (list
    (cons 20 "#8BD49C")
    (cons 40 "#abcd93")
    (cons 60 "#cbc68b")
    (cons 80 "#EBBF83")
    (cons 100 "#e5ae6f")
    (cons 120 "#df9e5b")
    (cons 140 "#D98E48")
    (cons 160 "#dc885f")
    (cons 180 "#df8376")
    (cons 200 "#E27E8D")
    (cons 220 "#df7080")
    (cons 240 "#dc6274")
    (cons 260 "#D95468")
    (cons 280 "#b35365")
    (cons 300 "#8d5163")
    (cons 320 "#675160")
    (cons 340 "#56697A")
    (cons 360 "#56697A")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'doom-dark+ t)


;; if you want to change prefix for lsp-mode keybindings.
(setq lsp-keymap-prefix "s-l")

(require 'lsp-mode)
(add-hook 'rust-mode-hook #'lsp)
(setq lsp-rust-server 'rust-analyzer)


;;(require 'package)
;;(add-to-list 'package-archives'("melpa" . "https://melpa.org/packages/"))
;;(package-initialize)
;;(package-refresh-contents)
;; Download Evil
;(unless (package-installed-p 'evil) (package-install 'evil))
;(require 'evil)
;(evil-mode 1)
;(define-key evil-insert-state-map (kbd "TAB") 'tab-to-tab-stop)
;; (setq evil-normal-state-cursor    '(box  "blue"))
;; (setq evil-insert-state-cursor    '(box  "red"))
;; (setq evil-visual-state-cursor    '(box  "green"))
;; (setq evil-motion-state-cursor    '(box  "blue"))
;; (setq evil-replace-state-cursor   '(box  "blue"))
;; (setq evil-operator-state-cursor  '(box  "blue"))
;; (setq-default tab-width 2)

(add-hook 'c-mode-hook
(lambda ()
(add-to-list 'ac-sources 'ac-source-c-headers)
(add-to-list 'ac-sources 'ac-source-c-header-symbols t)))
(require 'ac-dcd)
(add-to-list 'ac-modes 'd-mode)
(add-hook 'd-mode-hook #'ac-dcd-setup)

(setq disabled-command-function 'ignore)
