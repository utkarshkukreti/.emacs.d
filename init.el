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

;; Default font
;; http://stackoverflow.com/a/6050987
(set-default-font "Ubuntu Mono 15")
