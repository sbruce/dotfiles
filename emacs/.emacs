(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(add-to-list 'load-path "~/.emacs.d/elpa/color-theme-6.5.5")
(add-to-list 'load-path "~/.emacs.d/elpa/color-theme-twilight-0.1")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(setq my-el-get-packages
      (append
       '(starter-kit css-mode go-mode color-theme-twilight)))
(el-get 'sync my-el-get-packages)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(visible-bell t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(blink-cursor-mode 0)
(setq initial-scratch-message "")
(setq inhibit-startup-message t)

(setq visible-bell t)

(setq inhibit-startup-echo-area-message "guerry")

;;(toggle-frame-fullscreen)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)

(require 'package)
;; Add the original Emacs Lisp Package Archive
(add-to-list 'package-archives
             '("elpa" . "http://tromey.com/elpa/"))
;; Add the user-contributed repository
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))


(require 'color-theme)
(load-file '"~/.emacs.d/elpa/color-theme-twilight-0.1/color-theme-twilight.el")

(color-theme-twilight)

(add-hook 'sgml-mode-hook 'zencoding-mode) ;; Auto-start on any markup modes
