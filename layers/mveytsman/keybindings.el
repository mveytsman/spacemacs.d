;;; keybindings.el --- mveytsman Layer keybindings File for Spacemacs
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

;;; I still like some readline bindings
;;(global-set-key (kbd "C-e") 'evil-end-of-line)

;; May not be the best way to disable evil bindings
(global-set-key [remap evil-scroll-line-down] 'mwim-end-of-code-or-line)
(global-set-key [remap evil-paste-last-insertion] 'mwim-beginning-of-code-or-line)
(global-set-key [remap evil-copy-from-below] 'mwim-end-of-code-or-line)
(global-set-key [remap evil-insert-digraph] 'kill-line)
(global-set-key (kbd "C-<backspace>") 'spacemacs/backward-kill-word-or-region)


;;Split window should switch to it
(global-set-key (kbd "C-x 2") (lambda () (interactive)(split-window-vertically) (other-window 1)))
(global-set-key (kbd "C-x 3") (lambda () (interactive)(split-window-horizontally) (other-window 1)))

(eval-after-load 'cider
  '(progn
     (add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)
     (define-key cider-repl-mode-map (kbd "s-<up>") 'cider-repl-previous-input)
     (define-key cider-repl-mode-map (kbd "s-<down>") 'cider-repl-next-input)))

;; (eval-after-load 'evil
;;   '(progn
;;      (define-key evil-normal-state-map (kbd "M-.") nil)))

;; (eval-after-load 'evil-lisp-state
;;   ;; I prefer some different key bindings for lisp mode
;;   '(progn
;;      (evil-leader/set-key (kbd (concat evil-lisp-state-leader-prefix " " "j")) 'evil-lisp-state-sp-absorb-sexp)
;;      (define-key evil-lisp-state-map "j" 'sp-down-sexp)

;;      (evil-leader/set-key (kbd (concat evil-lisp-state-leader-prefix " " "k")) 'evil-lisp-state-sp-backward-up-sexp)
;;      (define-key evil-lisp-state-map "k" 'evil-lisp-state-sp-backward-up-sexp)))
