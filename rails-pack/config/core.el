(require 'iy-go-to-char)

(add-to-list 'same-window-regexps "\*Help\*")
(add-to-list 'same-window-regexps "\*rake\*")
(add-to-list 'same-window-regexps "\*Apropos\*")
(add-to-list 'same-window-regexps "\*compilation\*")
(add-to-list 'same-window-regexps "\*ruby\*")
(add-to-list 'same-window-regexps "\*rails\*")

(setq show-paren-style (quote expression))
(delete-selection-mode 1)

(require 'browse-kill-ring)
(browse-kill-ring-default-keybindings)

;; (require 'scss-mode)

;; (require 'zencoding-mode)
;; (add-hook 'sgml-mode-hook 'zencoding-mode)

;; (live-add-pack-lib "expand-region.el")
;; (require 'expand-region)

;; Some stuff from emacs rocks
(defun untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))

(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun cleanup-buffer-safe ()
  "Perform a bunch of safe operations on the whitespace content of a buffer.
Does not indent buffer, because it is used for a before-save-hook, and that
might be bad."
  (interactive)
  (untabify-buffer)
  (delete-trailing-whitespace)
  (set-buffer-file-coding-system 'utf-8))

(defun cleanup-buffer ()
  "Perform a bunch of operations on the whitespace content of a buffer.
Including indent-buffer, which should not be called automatically on save."
  (interactive)
  (cleanup-buffer-safe)
  (indent-buffer))

(defadvice sgml-delete-tag (after reindent-buffer activate)
  (cleanup-buffer))
;;end of stuff from emacs rocks

;; (live-add-pack-lib "cucumber.el")
;; (require 'feature-mode)
;; (add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))


;; Function to open and goto indented next line
(defun open-next-line()
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))
