;; Essentials

;; http://whattheemacsd.com/init.el-01.html
;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

;; http://whattheemacsd.com/init.el-01.html#comment-742017081
;; Disable mouse-wheel-mode; very annoying.
(mouse-wheel-mode -1)
