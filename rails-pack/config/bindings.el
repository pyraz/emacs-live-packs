;; Place your bindings here.

;; For example:
;;(define-key global-map (kbd "C-+") 'text-scale-increase)
;;(define-key global-map (kbd "C--") 'text-scale-decrease)

;; Multiple cursors stuff, may want to bring this back
;;(global-set-key (kbd "C-c C-p") 'mark-previous-like-this)
;;(global-set-key (kbd "C-c C-n") 'mark-next-like-this)
;;(global-set-key (kbd "C-c a") 'mark-all-like-this)

;;
;; Put some bindings in my personal minor mode so
;; they aren't overridden by other modes
;;
;;(define-key slime-repl-mode-map (kbd "<up>") 'slime-repl-backward-input)
;;(define-key slime-repl-mode-map (kbd "<down>") 'slime-repl-next-input)

(define-key ruby-mode-map (kbd "RET") 'newline-and-indent)
;; (define-key scss-mode-map (kbd "RET") 'newline-and-indent)

;;(define-key html-mode-map (kbd "RET") 'newline-and-indent)
(add-hook 'html-mode-hook 'my-html-mods)
(defun my-html-mods ()
  "Add some stuff to html-mode"
  ;;(require 'rename-sgml-tag)
  ;;(define-key sgml-mode-map (kbd "C-c C-r") 'rename-sgml-tag)
  (define-key html-mode-map (kbd "RET") 'newline-and-indent))

;;(add-hook 'sgml-mode-hook 'my-sgml-mods)
;;(defun my-sgml-mods ()
;;  "Add to sgml mode"
;;  (require 'rename-sgml-tag)
;;  (define-key sgml-mode-map (kbd "C-c C-r") 'rename-sgml-tag)
;;  (define-key sgml-mode-map (kbd "C-c z") 'zencoding-expand-line))

;; (defvar diw-minor-mode-map (make-keymap) "diw-minor-mode keymap")
;; (define-key diw-minor-mode-map  (kbd "C-c C-k") 'slime-eval-buffer)
;; (define-key diw-minor-mode-map  (kbd "M-RET") 'open-next-line)
;; (define-key diw-minor-mode-map  (kbd "M-DEL") 'kill-whole-line)
;; (define-key diw-minor-mode-map  (kbd "M-9") 'paredit-backward-slurp-sexp)
;; (define-key diw-minor-mode-map  (kbd "M-0") 'paredit-backward-barf-sexp)
;; (define-key diw-minor-mode-map  (kbd "M-(") 'paredit-forward-barf-sexp)
;; (define-key diw-minor-mode-map  (kbd "M-)") 'paredit-forward-slurp-sexp)
;; (define-key diw-minor-mode-map  (kbd "M-}") 'paredit-splice-sexp)
;; (define-key diw-minor-mode-map  (kbd "M-{") 'paredit-wrap-round)
;; (define-key diw-minor-mode-map  (kbd "M-s") 'paredit-join-sexps)
;; (define-key diw-minor-mode-map  (kbd "C-x k") 'kill-this-buffer)
;; (define-key diw-minor-mode-map  (kbd "s-w") 'delete-frame)
;; (define-key diw-minor-mode-map  (kbd "C-j") 'eval-print-last-sexp)
;; (define-key diw-minor-mode-map  (kbd "s-o") 'ido-find-file)
;; (define-key diw-minor-mode-map  (kbd "C-x SPC") 'cua-set-mark)
;; (define-key diw-minor-mode-map  (kbd "C-x C-d") 'ido-dired)
;; (define-key diw-minor-mode-map  (kbd "C-x d") 'ido-dired)
;; (define-key diw-minor-mode-map  (kbd "C-x C-b") 'ibuffer)
;; (define-key diw-minor-mode-map  (kbd "C-x b") 'ido-switch-buffer)
;; (define-key diw-minor-mode-map  (kbd "C-x C-r") 'recentf-open-files)
;; (define-key diw-minor-mode-map  (kbd "C-x w") 'delete-window)
;; (define-key diw-minor-mode-map  (kbd "C-c c") 'clipboard-kill-ring-save)
;; (define-key diw-minor-mode-map  (kbd "C-c v") 'clipboard-yank)
;; (define-key diw-minor-mode-map  (kbd "C-x C-n") 'switch-to-next-buffer)
;; (define-key diw-minor-mode-map  (kbd "C-x C-p") 'switch-to-prev-buffer)
;; (define-key diw-minor-mode-map  (kbd "C-z") 'cua-scroll-down)
;; (define-key diw-minor-mode-map  (kbd "M-~") 'switch-to-next-buffer)
;; (define-key diw-minor-mode-map  (kbd "M-`") 'switch-to-prev-buffer)
;; (define-key diw-minor-mode-map  (kbd "M-m") 'iy-go-to-char)
;; (define-key diw-minor-mode-map  (kbd "M-M") 'iy-go-to-char-backward)
;; (define-key diw-minor-mode-map  (kbd "C-@") 'er/expand-region)
;; (define-key diw-minor-mode-map  (kbd "M-2") 'er/contract-region)



;; (define-minor-mode diw-minor-mode
;;   "A minor mode so that my key settings aren't shadowed by other major/minor modes"
;;   t " diw" 'diw-minor-mode-map)


;; custom rinari keybindings
; When Rinari mode is loaded, add extra bindings to its key map enabling the
  ; use of M-R and M-r as its prefixes. The easier to type M-r is used for the
  ; frequently used `find' functions and M-R is used for the more infrequently
  ; used rake/script/web-server commands. M-r is normally bound to
  ; `move-to-window-line-top-bottom', which I can do without, and M-R is
  ; normally unbound. Examples of the changes below; it should be obvious how to
  ; pick your own prefixes if you don't like mine.


  ;
  ; Function                  Default Binding    New Binding
  ; ========                  ===============    ===========
  ; rinari-find-controller    C-c ; f c          M-r c
  ; rinari-web-server         C-c ; w            M-R w
  (add-hook 'rinari-minor-mode-hook (lambda ()
    (define-prefix-command 'pd-rinari-map1)
    (define-prefix-command 'pd-rinari-map2)
    (local-set-key (kbd "M-R") 'pd-rinari-map1)
    (local-set-key (kbd "M-r") 'pd-rinari-map2)

    (define-key pd-rinari-map1 "'" 'rinari-find-by-context)
    (define-key pd-rinari-map1 ";" 'rinari-find-by-context)
    (define-key pd-rinari-map1 "c" 'rinari-console)
    (define-key pd-rinari-map1 "d" 'rinari-cap)
    (define-key pd-rinari-map1 "e" 'rinari-insert-erb-skeleton)
    (define-key pd-rinari-map1 "g" 'rinari-rgrep)
    (define-key pd-rinari-map1 "p" 'rinari-goto-partial)
    (define-key pd-rinari-map1 "q" 'rinari-sql)
    (define-key pd-rinari-map1 "r" 'rinari-rake)
    (define-key pd-rinari-map1 "s" 'rinari-script)
    (define-key pd-rinari-map1 "t" 'rinari-test)
    (define-key pd-rinari-map1 "w" 'rinari-web-server)
    (define-key pd-rinari-map1 "x" 'rinari-extract-partial)

    (define-key pd-rinari-map2 ";" 'rinari-find-by-context)
    (define-key pd-rinari-map2 "C" 'rinari-find-cells)
    (define-key pd-rinari-map2 "F" 'rinari-find-features)
    (define-key pd-rinari-map2 "M" 'rinari-find-mailer)
    (define-key pd-rinari-map2 "S" 'rinari-find-steps)
    (define-key pd-rinari-map2 "Y" 'rinari-find-sass)
    (define-key pd-rinari-map2 "a" 'rinari-find-application)
    (define-key pd-rinari-map2 "c" 'rinari-find-controller)
    (define-key pd-rinari-map2 "e" 'rinari-find-environment)
    (define-key pd-rinari-map2 "f" 'rinari-find-file-in-project)
    (define-key pd-rinari-map2 "h" 'rinari-find-helper)
    (define-key pd-rinari-map2 "i" 'rinari-find-migration)
    (define-key pd-rinari-map2 "j" 'rinari-find-javascript)
    (define-key pd-rinari-map2 "l" 'rinari-find-lib)
    (define-key pd-rinari-map2 "m" 'rinari-find-model)
    (define-key pd-rinari-map2 "n" 'rinari-find-configuration)
    (define-key pd-rinari-map2 "o" 'rinari-find-log)
    (define-key pd-rinari-map2 "p" 'rinari-find-public)
    (define-key pd-rinari-map2 "r" 'rinari-find-rspec)
    (define-key pd-rinari-map2 "s" 'rinari-find-script)
    (define-key pd-rinari-map2 "t" 'rinari-find-test)
    (define-key pd-rinari-map2 "u" 'rinari-find-plugin)
    (define-key pd-rinari-map2 "v" 'rinari-find-view)
    (define-key pd-rinari-map2 "w" 'rinari-find-worker)
    (define-key pd-rinari-map2 "x" 'rinari-find-fixture)
    (define-key pd-rinari-map2 "y" 'rinari-find-stylesheet)
    (define-key pd-rinari-map2 "z" 'rinari-find-rspec-fixture)
  ))
