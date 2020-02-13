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

   dotspacemacs-additional-packages '(xclip)

;; ...

(defun dotspacemacs/user-config ()
  (require 'xclip)
  (define-globalized-minor-mode global-xclip-mode
    xclip-mode xclip-mode)

  (global-xclip-mode 1)
  )
