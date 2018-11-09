;;; org-spotify.el - Support for links to spotify tracks in Org

(require 'org)
(require 's)

(org-add-link-type "spotify" 'org-spotify-open)
(add-hook 'org-store-link-functions 'org-spotify-store-link)

(defun org-spotify-open (path)
  (let ((uri (concat "spotify:" path)))
    (call-process "spotify" nil 0 nil "play" "uri" uri)))

(defun grab-spotify-uri ()
  (s-chomp (shell-command-to-string "spotify share | ggrep -oP 'URI: \\K.*'")))

(defun grab-spotify-info (&rest fields)
  (let ((info-strings (split-string
                       (shell-command-to-string "spotify status | cut -d' ' -f 2-")
                       "\n" t)))
    (cl-loop for field in '(:artist :album :track :position)
             for string in (cdr info-strings)
             when (or (null fields)
                      (memq field fields))
             collect (s-trim string))))

(defun org-spotify-current ()
  (cl-destructuring-bind (artist album track position)
      (grab-spotify-info)
    (format "[[%s][%s]]\n%s\n%s\n[%s]"
            (grab-spotify-uri) track artist album position)))

(provide 'org-spotify)
