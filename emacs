 
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
(set-frame-font "Consolas-16" t)

(setq disabled-command-function 'ignore)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("94a94c957cf4a3f8db5f12a7b7e8f3e68f686d76ae8ed6b82bd09f6e6430a32c" "b89a4f5916c29a235d0600ad5a0849b1c50fab16c2c518e1d98f0412367e7f97" "3e27c4a8de1ea4e0e7195815ef9ddba53a7dd5cdd1279b0309e9f8e9553be3b7" "171d1ae90e46978eb9c342be6658d937a83aaa45997b1d7af7657546cae5985b" "fe1c13d75398b1c8fd7fdd1241a55c286b86c3e4ce513c4292d01383de152cb7" "5b7c31eb904d50c470ce264318f41b3bbc85545e4359e6b7d48ee88a892b1915" "ecc077ef834d36aa9839ec7997aad035f4586df7271dd492ec75a3b71f0559b3" default)))
 '(package-selected-packages
   (quote
    (cyberpunk-theme lsp-python-ms lsp-ui company-lsp lsp-mode cmake-mode dracula-theme vscode-dark-plus-theme vscode-icon rustic rust-mode reason-mode tuareg caml borland-blue-theme cyberpunk-2019-theme atom-dark-theme seti-theme ahungry-theme))))
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

(load-theme 'vscode-dark-plus)

;;(use-package lsp-mode)
;;(use-package lsp-ui)
;;(use-package company-lsp
;; :ensure t
;;  :commands company-lsp
;;  :config (push 'company-lsp company-backends))