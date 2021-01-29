 
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
(global-set-key (kbd "C-x C-SPC") (kbd "C-x SPC"))
;;(global-set-key (kbd "C-SPC") nil)
(global-set-key (kbd "C-x C-SPC") nil)
(global-set-key (kbd "<C-mouse-5>") 'text-scale-decrease)
(global-set-key (kbd "<C-mouse-4>") 'text-scale-increase)

(setq kill-buffer-query-functions
  (remq 'process-kill-buffer-query-function
         kill-buffer-query-functions))
(fset 'yes-or-no-p 'y-or-n-p)
(setq confirm-nonexistent-file-or-buffer nil)
(set-frame-font "Consolas-24" t)

(setq disabled-command-function 'ignore)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("fe1c13d75398b1c8fd7fdd1241a55c286b86c3e4ce513c4292d01383de152cb7" "5b7c31eb904d50c470ce264318f41b3bbc85545e4359e6b7d48ee88a892b1915" "ecc077ef834d36aa9839ec7997aad035f4586df7271dd492ec75a3b71f0559b3" default)))
 '(package-selected-packages
   (quote
    (dracula-theme vscode-dark-plus-theme vscode-icon rustic rust-mode reason-mode tuareg caml borland-blue-theme cyberpunk-2019-theme atom-dark-theme seti-theme ahungry-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(setq package-archives
      '(("gnu"             . "https://elpa.gnu.org/packages/")
        ("melpa"           . "http://melpa.org/packages/")
      	("melpa-stable" . "http://stable.melpa.org/packages/")
      	("elpy"         . "http://jorgenschaefer.github.io/packages/")
      	("org"          . "http://orgmode.org/elpa/") ;; for org-plus-contrib
        ))
;;(package-refresh-contents)

(load-theme 'dracula)
