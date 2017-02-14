
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;(package-initialize)

(org-babel-load-file "~/.emacs.d/configuration.org")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("228c0559991fb3af427a6fa4f3a3ad51f905e20f481c697c6ca978c5683ebf43" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "9b1c580339183a8661a84f5864a6c363260c80136bd20ac9f00d7e1d662e936a" "d21135150e22e58f8c656ec04530872831baebf5a1c3688030d119c114233c24" "d6db7498e2615025c419364764d5e9b09438dfe25b044b44e1f336501acd4f5b" "b181ea0cc32303da7f9227361bb051bbb6c3105bb4f386ca22a06db319b08882" "003a9aa9e4acb50001a006cfde61a6c3012d373c4763b48ceb9d523ceba66829" "946e871c780b159c4bb9f580537e5d2f7dba1411143194447604ecbaf01bd90c" "721bb3cb432bb6be7c58be27d583814e9c56806c06b4077797074b009f322509" "64ca5a1381fa96cb86fd6c6b4d75b66dc9c4e0fc1288ee7d914ab8d2638e23a9" "1b27e3b3fce73b72725f3f7f040fd03081b576b1ce8bbdfcb0212920aec190ad" "9316d66f16f4c3ae9fca6c79efc5712b99a6edaf4f984ecc8ae918354fa8f03a" "4083a1c6d3e41ac37720b27d2490e6b8bd5cf0a9fb2faeeb9e9a8546b0ca82e0" default)))
 '(hl-paren-colors
   (quote
    ("#B9F" "#B8D" "#B7B" "#B69" "#B57" "#B45" "#B33" "#B11")))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (linum-relative perl6-mode matlab-mode htmlize org-bullets auto-org-md babel evil-surround use-package solarized-theme seq racer powerline magit let-alist helm evil-visual-mark-mode evil-leader evil-commentary esup company-anaconda cargo))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((t (:foreground "#63747c" :slant italic :weight light))))
 '(font-lock-string-face ((t (:foreground "#a8c194" :slant italic :weight bold)))))
