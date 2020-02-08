;; ...

   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     better-defaults
     elixir
     (elm :variables
         elm-sort-imports-on-save t
         elm-format-on-save t)
     emacs-lisp
     git
     helm
     html
     javascript
     markdown
     (shell :variables
         shell-default-height 30
         shell-default-position 'bottom)
     spell-checking
     syntax-checking
     version-control
     )

;; ...

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
    (defun copy-to-clipboard ()
      "Copies selection to x-clipboard."
      (interactive)
      (if (display-graphic-p)
          (progn
            (message "Yanked region to x-clipboard!")
            (call-interactively 'clipboard-kill-ring-save)
            )
        (if (region-active-p)
            (progn
              (shell-command-on-region (region-beginning) (region-end) "xsel -i -b")
              (message "Yanked region to clipboard!")
              (deactivate-mark))
          (message "No region active; can't yank to clipboard!")))
      )

    (defun paste-from-clipboard ()
      "Pastes from x-clipboard."
      (interactive)
      (if (display-graphic-p)
          (progn
            (clipboard-yank)
            (message "graphics active")
            )
        (insert (shell-command-to-string "xsel -o -b"))
        )
      )
    (evil-leader/set-key "o y" 'copy-to-clipboard)
    (evil-leader/set-key "o p" 'paste-from-clipboard)
    )
