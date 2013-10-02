;; Essentials

;; Turn off mouse interface early in startup to avoid momentary display
;; http://whattheemacsd.com/init.el-01.html
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please ... jeez
;; http://whattheemacsd.com/init.el-01.html
(setq inhibit-startup-message t)

;; Disable mouse-wheel-mode; very annoying.
;; http://whattheemacsd.com/init.el-01.html#comment-742017081
(mouse-wheel-mode -1)

;; Emacs saves settings set from the "customize" UI here.
;; https://github.com/purcell/emacs.d/blob/master/init.el
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

(add-to-list 'load-path user-emacs-directory)

;; Packages
(require 'packages)
(packages-ensure-installed
  '(
    ;; Vim, not using it at the moment though
    evil
    ;; UI
    solarized-theme
    ;; Snippets
    yasnippet
    ;; Enables ido-mode almost everywhere
    ido-ubiquitous
    ;; IDO for M-x
    smex
    ;; Increase selected region by semantic units
    expand-region
    ;; Better mode line
    powerline
    ;; Auto complete
    auto-complete
    ;; Useful for Lisp-like languages
    paredit rainbow-delimiters
    ;; Clojure specific
    clojure-mode clojure-test-mode nrepl ac-nrepl
   ))

;; UI
;; Solarized Light Theme
(load-theme 'solarized-light)
;; Default font
;; http://stackoverflow.com/a/6050987
(set-default-font "Ubuntu Mono 15")
(setq show-trailing-whitespace t)

;; Enable YASnippet globally
(yas-global-mode 1)

;; Enable ido and ido-ubiquitous modes
(ido-mode 1)
(ido-ubiquitous-mode 1)
(setq ido-enable-flex-matching t)

;; Use smex as default M-x key binding
;; https://github.com/nonsequitur/smex#get-started
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; C-= will expand selection using "expand-region" package
(global-set-key (kbd "C-=") 'er/expand-region)

;; Make RET indent the new line too
(define-key global-map (kbd "RET") 'newline-and-indent)
