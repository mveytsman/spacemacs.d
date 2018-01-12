;;; packages.el --- mveytsman Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Max Veytsman <maxim@ontoillogical.com>
;; URL: https://github.com/mveytsman/.emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar mveytsman-packages
  '(
    shell-pop
    clojure-cheatsheet
    ;evil-lisp-state
    ;evil
    deft
    midje-mode
    solidity-mode
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defvar mveytsman-excluded-packages '()
  "List of packages to exclude.")

(defun mveytsman/init-shell-pop ()
  (use-package shell-pop
    :defer t
    :init
    (progn
      (global-set-key (kbd "C-'") 'shell-pop)
      (global-set-key (kbd "C-;") 'shell-pop--cd-to-cwd-eshell)
      (setq shell-pop-shell-type '("eshell" "*eshell*" (lambda () (eshell))))
      (setq shell-pop-window-height 25) ;the number for the percentage of the selected window. if 100, shell-pop use the whole of selected window, not spliting.
      (setq shell-pop-window-position "bottom") ;shell-pop-up position. You can choose "top" or "bottom".
      )))

(defun mveytsman/init-clojure-cheatsheet ()
  (use-package clojure-cheatsheet
    :commands (clojure-cheatsheet)))

(defun mveytsman/init-deft ()
  (use-package deft
    :init (progn
            (setq deft-extension "org")
            (setq deft-text-mode 'org-mode)
            (setq deft-use-filename-as-title t)
            (setq deft-directory "~/Dropbox/org")
            (global-set-key (kbd "C-c q") 'deft))))

(defun mveytsman/init-midje-mode ()
  (use-package midje-mode))

(defun mveytsman/init-solidity-mode ()
  (use-package solidity-mode))
