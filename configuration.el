
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-hl-line-mode)
(set-default-font "Operator Mono 12")
(set-frame-font "Operator Mono 12" t t)
;(set-default-font "ProFontWindows 13")
(setq ring-bell-function 'ignore)
(server-start)
(add-to-list 'load-path "~/.emacs.d/lisp/")

(setq user-full-name "Maxfield Lehman")

(defun kill-matching-lines (regexp &optional rstart rend interactive)
"Kill lines containing matches for REGEXP.

See `flush-lines' or `keep-lines' for behavior of this command.

If the buffer is read-only, Emacs will beep and refrain from deleting
the line, but put the line in the kill ring anyway.  This means that
you can use this command to copy text from a read-only buffer.
\(If the variable `kill-read-only-ok' is non-nil, then this won't
even beep.)"
(interactive
(keep-lines-read-args "Kill lines containing match for regexp"))
(let ((buffer-file-name nil)) ;; HACK for `clone-buffer'
    (with-current-buffer (clone-buffer nil nil)
    (let ((inhibit-read-only t))
        (keep-lines regexp rstart rend interactive)
        (kill-region (or rstart (line-beginning-position))
                    (or rend (point-max))))
    (kill-buffer)))
(unless (and buffer-read-only kill-read-only-ok)
    ;; Delete lines or make the "Buffer is read-only" error.
    (flush-lines regexp rstart rend interactive)))

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

(load-file "~/.emacs.d/sensible-defaults.el")
(sensible-defaults/use-all-settings)

(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(setq-default c-basic-offset 4)
(defvaralias 'cperl-indent-level 'tab-width)
(electric-indent-mode 1)
(electric-pair-mode 1)
(global-linum-mode)
(setq linum-relative-current-symbol "")
(with-eval-after-load 'adaptive-wrap
(setq-default adaptive-wrap-extra-indent 2))

(add-hook 'visual-line-mode-hook
(lambda ()
    (adaptive-wrap-prefix-mode +1)
    (diminish 'visual-line-mode)))

(global-visual-line-mode +1)

(global-diff-hl-mode)
(diff-hl-flydiff-mode)
(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)

(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
    "<left>" 'evil-window-left
    "<right>" 'evil-window-right)
(require 'evil)
(evil-mode t)
(evil-commentary-mode)
(global-evil-surround-mode t)

(evil-leader/set-key "k" 'kill-buffer)
(evil-leader/set-key "g" 'magit-status)
(evil-leader/set-key "<up>" 'evil-numbers/inc-at-pt)
(evil-leader/set-key "<down>" 'evil-numbers/dec-at-pt)

(require 'powerline)
(powerline-center-evil-theme)

(add-to-list 'load-path "~/dev/github/org-mode/lisp" t)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(add-hook 'org-mode-hook (lambda () (org-indent-mode 1)))
(add-hook 'org-mode-hook (lambda () (linum-mode 1)))
(define-key global-map (kbd "C-c c") 'org-capture)
(define-key org-mode-map (kbd "C-c g c") (lambda () (interactive) (insert (grab-mac-link 'chrome 'org))))
(define-key org-mode-map (kbd "C-c g m") (lambda () (interactive) (insert (grab-mac-link 'mail 'org))))
(add-hook 'org-mode-hook
          (lambda ()
            (add-hook 'before-save-hook
                      (lambda ()
                        (setq org-tags-column (- 8 (window-width)))
                        (org-align-all-tags))
                      nil 'make-it-local)))
(setq org-todo-keywords
      '((sequence "TODO" "WIP" "WAIT" "|" "DONE" "CANCELED")))
(setq org-todo-keyword-faces
  '(("TODO"     . "indianred2")
    ("WIP"      . "deepskyblue2")
    ("WAIT"     . "magenta1")
    ("DONE"     . "green2")
    ("CANCELED" . "navajowhite3")))
(setq org-src-fontify-natively t)
(setq org-export-latex-listings t)
(setq org-ellipsis " ⤵")
(setq org-src-tab-acts-natively t)
(setq org-bullets-bullet-list '("○" "☉" "◎" "◉" "○" "◌" "◎" "●" "◦" "◯" "⚪" "⚫" "⚬" "❍" "￮" "⊙" "⊚" "⊛" "∙" "∘"))

(load (expand-file-name "~/quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "/usr/bin/env sbcl")

(defun fish-path (path max-len)
  "Return a potentially trimmed-down version of the directory PATH, replacing
parent directories with their initial characters to try to get the character
length of PATH (sans directory slashes) down to MAX-LEN."
  (let* ((components (split-string (abbreviate-file-name path) "/"))
         (len (+ (1- (length components))
                 (reduce '+ components :key 'length)))
         (str ""))
    (while (and (> len max-len)
                (cdr components))
      (setq str (concat str
                        (cond ((= 0 (length (car components))) "/")
                              ((= 1 (length (car components)))
                               (concat (car components) "/"))
                              (t
                               (if (string= "."
                                            (string (elt (car components) 0)))
                                   (concat (substring (car components) 0 2)
                                           "/")
                                 (string (elt (car components) 0) ?/)))))
            len (- len (1- (length (car components))))
            components (cdr components)))
    (concat str (reduce (lambda (a b) (concat a "/" b)) components))))

(require 'dash)
(require 's)

(defmacro with-face (STR &rest PROPS)
  "Return STR propertized with PROPS."
  `(propertize ,STR 'face (list ,@PROPS)))

(defmacro esh-section (NAME ICON FORM &rest PROPS)
  "Build eshell section NAME with ICON prepended to evaled FORM with PROPS."
  `(setq ,NAME
         (lambda () (when ,FORM
                      (-> ,ICON
                          (concat esh-section-delim ,FORM)
                          (with-face ,@PROPS))))))

(defun esh-acc (acc x)
  "Accumulator for evaluating and concatenating esh-sections."
  (--if-let (funcall x)
      (if (s-blank? acc)
          it
        (concat acc esh-sep it))
    acc))

(defun esh-prompt-func ()
  "Build `eshell-prompt-function'"
  (concat esh-header
          (-reduce-from 'esh-acc "" eshell-funcs)
          "\n"
          eshell-prompt-string))

(set-fontset-font t '(#Xf07c . #Xf07c) "fontawesome")
(set-fontset-font t '(#Xf126 . #Xf126) "fontawesome")
(set-fontset-font t '(#Xf017 . #Xf017) "fontawesome")
(set-fontset-font t '(#Xf0c9 . #Xf0c9) "fontawesome")
(set-fontset-font t '(#Xf09b . #Xf09b) "fontawesome")
(set-fontset-font t '(#Xf296 . #Xf296) "fontawesome")

(esh-section esh-dir
             "\xf07c"  ;  (faicon folder)
             (abbreviate-file-name (eshell/pwd))
             '(:foreground "DodgerBlue1" :bold ultra-bold))

(esh-section esh-git
             (concat
              "\xf126"                  ;  (git icon)
              (pcase (s-left 10 (magit-get "remote" (magit-get-remote) "url"))
                ("git@github" " ")
                ("git@gitlab" " ")
                (_            "")))
             (magit-get-current-branch)
             '(:foreground "green3"))

(esh-section esh-clock
             "\xf017"  ;  (clock icon)
             (format-time-string "%I:%M %p" (current-time))
             '(:foreground "wheat2"))

;; Below I implement a "prompt number" section
(setq esh-prompt-num 0)
(add-hook 'eshell-exit-hook (lambda () (setq esh-prompt-num 0)))
(advice-add 'eshell-send-input :before
            (lambda (&rest args) (setq esh-prompt-num (incf esh-prompt-num))))

(esh-section esh-num
             "\xf0c9"  ;  (list icon)
             (number-to-string esh-prompt-num)
             '(:foreground "orchid1"))

(esh-section esh-user
             "\xf2bd"
             (user-login-name)
             '(:foreground "indianred1"))

;; Separator between esh-sections
(setq esh-sep " | ")  ; or "  "

;; Separator between an esh-section icon and form
(setq esh-section-delim " ")

;; Eshell prompt header
(setq esh-header "\n ")  ; or "\n┌─"

;; Eshell prompt regexp and string. Unless you are varying the prompt by eg.
;; your login, these can be the same.
(setq eshell-prompt-regexp "└─> ")   ; or "└─> "
(setq eshell-prompt-string "└─> ")   ; or "└─> "

;; Choose which eshell-funcs to enable
(setq eshell-funcs (list esh-dir esh-git esh-clock esh-user))

;; Enable the new eshell prompt
(setq eshell-prompt-function 'esh-prompt-func)

(use-package helm
    :ensure t)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(helm-mode 1)

(add-hook 'after-init-hook 'global-company-mode)
(setq company-dabbrev-downcase 0)
(setq company-idle-delay 0)

(add-hook 'clojure-mode-hook 'cider-mode)
    (add-hook 'cider-repl-mode-hook #'company-mode)
    (add-hook 'cider-mode-hook #'company-mode)
(with-eval-after-load 'lispyville
  (lispyville-set-key-theme '(operators
                              (escape insert)
                              (additional-movement normal visual motion)
                              slurp/barf-cp)))

(add-hook 'forth-mode-hook (lambda () (electric-pair-mode -1)))

(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)
(setq ruby-deep-indent-paren nil)
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

(add-hook 'rust-mode-hook 'cargo-minor-mode)
(evil-leader/set-key-for-mode 'rust-mode "f" 'rust-format-buffer)
(setq racer-cmd "~/.cargo/bin/racer") ;; Rustup binaries PATH
(setq racer-rust-src-path "/Users/Max/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src") ;; Rust source code PATH

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

(add-hook 'python-mode-hook 'anaconda-eldoc-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(eval-after-load "company"
'(add-to-list 'company-backends 'company-anaconda))

(add-hook 'java-mode-hook (lambda ()
                    (setq c-basic-offset 4
                            tab-width 4
                            indent-tabs-mode t)))
