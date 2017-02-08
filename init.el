(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
    (require 'use-package))

(require 'evil)
(evil-mode t)
(evil-commentary-mode)
(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key "k" 'kill-buffer)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(electric-pair-mode 1)

(require 'powerline)
(powerline-center-evil-theme)
; (use-package airline-themes
;     :ensure t)
; (load-theme 'airline-papercolor t)

; Helm setup
(use-package helm
    :ensure t)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(helm-mode 1)

(add-hook 'after-init-hook 'global-company-mode)

; Rust setup
(add-hook 'rust-mode-hook 'cargo-minor-mode)
(evil-leader/set-key-for-mode 'rust-mode "f" 'rust-format-buffer)
(setq racer-cmd "~/.cargo/bin/racer") ;; Rustup binaries PATH
(setq racer-rust-src-path "/Users/Max/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src") ;; Rust source code PATH

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

; Python setup
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(eval-after-load "company"
 '(add-to-list 'company-backends 'company-anaconda))

(set-default-font "Operator Mono 12")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 ; '(custom-enabled-themes (quote (airline-papercolor solarized-dark)))
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("228c0559991fb3af427a6fa4f3a3ad51f905e20f481c697c6ca978c5683ebf43" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "9b1c580339183a8661a84f5864a6c363260c80136bd20ac9f00d7e1d662e936a" "d21135150e22e58f8c656ec04530872831baebf5a1c3688030d119c114233c24" "d6db7498e2615025c419364764d5e9b09438dfe25b044b44e1f336501acd4f5b" "b181ea0cc32303da7f9227361bb051bbb6c3105bb4f386ca22a06db319b08882" "003a9aa9e4acb50001a006cfde61a6c3012d373c4763b48ceb9d523ceba66829" "946e871c780b159c4bb9f580537e5d2f7dba1411143194447604ecbaf01bd90c" "721bb3cb432bb6be7c58be27d583814e9c56806c06b4077797074b009f322509" "64ca5a1381fa96cb86fd6c6b4d75b66dc9c4e0fc1288ee7d914ab8d2638e23a9" "1b27e3b3fce73b72725f3f7f040fd03081b576b1ce8bbdfcb0212920aec190ad" "9316d66f16f4c3ae9fca6c79efc5712b99a6edaf4f984ecc8ae918354fa8f03a" "4083a1c6d3e41ac37720b27d2490e6b8bd5cf0a9fb2faeeb9e9a8546b0ca82e0" default)))
 '(hl-paren-colors
   (quote
    ("#B9F" "#B8D" "#B7B" "#B69" "#B57" "#B45" "#B33" "#B11")))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((t (:foreground "#63747c" :slant italic :weight light))))
 '(font-lock-string-face ((t (:foreground "#a8c194" :slant italic :weight bold)))))
