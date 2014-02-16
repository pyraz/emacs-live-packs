;; Configuration file for rinari
(require 'ido)
(ido-mode t)

(live-add-pack-lib "rinari")
(require 'rinari)
(defun enable-rinari-hook()
  (if (and (locate-dominating-file default-directory "config/application.rb")
           (locate-dominating-file default-directory "Gemfile")
           (locate-dominating-file default-directory "Rakefile")
           (locate-dominating-file default-directory "app")
      )
      (rinari-launch)
  )
)

(add-hook 'find-file-hook 'enable-rinari-hook)


(live-add-pack-lib "inf-ruby")
(require 'inf-ruby)
(autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
(autoload 'inf-ruby-setup-keybindings "inf-ruby" "" t)
(eval-after-load 'ruby-mode
  '(add-hook 'ruby-mode-hook 'inf-ruby-setup-keybindings))
