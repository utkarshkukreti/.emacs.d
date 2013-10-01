;; Simple package install helpers.
;; Thanks to http://stackoverflow.com/a/10102154 and
;; https://github.com/bbatsov/prelude/blob/master/core/prelude-packages.el
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(setq url-http-attempt-keepalives nil)

(defun packages--list-all-p (pred list)
  (if (null list)
    t
    (if (funcall pred (car list))
      (packages--list-all-p pred (cdr list))
      nil)))

(defun packages-ensure-installed (packages)
  ;; If any of the package are *not* installed...
  (unless (packages--list-all-p 'package-installed-p packages)
    ;; ...install them.
    (message "%s" "Refreshing packages database...")
    (package-refresh-contents)
    (message "%s" " done.")
    (dolist (p packages)
      (when (not (package-installed-p p))
	(message "Installing package \"%s\"..." p)
	(package-install p)
	(message "%s" " done.")))))

(provide 'packages)
