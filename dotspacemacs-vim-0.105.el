;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     better-defaults
     github
     (version-control :variables version-control-diff-tool 'git-gutter+
                      version-control-global-margin t)
     markdown
     (vinegar :variables vinegar-reuse-dired-buffer t)
     org
     search-engine
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     (syntax-checking :variables syntax-checking-enable-by-default nil)
     (spell-checking :variables spell-checking-enable-by-default nil)
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     yaml
     ;; (ruby :variables ruby-version-manager 'rvm)
     python
     lua
     html
     ;; command-log
     javascript
     ;; restclient
     emacs-lisp
     (clojure :variables clojure-enable-fancify-symbols t)
     ranger
     ;; racket
     (spacemacs-layouts :variables layouts-enable-autosave t
                        layouts-autosave-delay 300)
     colors
     (git :variables
          git-magit-status-fullscreen t
          magit-push-always-verify nil
          magit-save-repository-buffers 'dontask
          magit-revert-buffers 'silent
          magit-refs-show-commit-count 'all
          magit-revision-show-gravatars nil)
     (ibuffer :variables ibuffer-group-buffers-by 'projects)
     (c-c++ :variables
            c-c++-default-mode-for-headers 'c++-mode)
     (auto-completion :variables auto-completion-enable-sort-by-usage t
                      :disabled-for org markdown)
     (chinese :variables chinese-enable-youdao-dict t)
     (ess :variables
          ess-enable-smart-equals t)
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(fcitx
                                      )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '(counsel-projectile
                                    magit-gh-pulls
                                    magit-gitflow
                                    emmet-mode
                                    evil-mc
                                    ;; pangu-spacing
                                    holy-mode
                                    skewer-mode
                                    highlight-indentation
                                    vi-tilde-fringe
                                    open-junk-file
                                    coffee-mode
                                    evil-tutor
                                    eyebrowse
                                    hl-anything
                                    org-bullets
                                    smooth-scrolling
                                    org-repo-todo
                                    chinese-wbim
                                    chinese-pyim
                                    srefactor
                                    org-download
                                    org-timer
                                    livid-mode
                                    ;; org-plus-contrib
                                    org-tree-slide
                                    git-gutter
                                    git-gutter-fringe
                                    alert
                                    ;; disable it for lispy-mode
                                    ;;https://github.com/abo-abo/lispy/issues/137
                                    evil-escape
                                    ;;At first, I should disable hydra in zilongshanren layer and install clj-refactor, after it is installed.
                                    ;; I could re-enable it again in zilongshanren layer.
                                    ;; clj-refactor
                                    ;;remove from spacemacs distribution
                                    ;; neotree
                                    ;; leuven-theme
                                    gh-md
                                    evil-lisp-state
                                    spray
                                    doc-view
                                    lorem-ipsum
                                    ac-ispell
                                    ;; ace-jump-mode
                                    ;; ace-pinyin
                                    find-by-pinyin-dired
                                    ;; auto-complete
                                    auto-dictionary
                                    clang-format
                                    define-word
                                    disaster
                                    epic
                                    fancy-battery
                                    neotree
                                    org-present
                                    orgit
                                    orglue
                                    spacemacs-theme
                                    spinner
                                    tagedit
                                    helm-flyspell
                                    helm-c-yasnippet
                                    helm-pydoc
                                    ;; ace-jump-helm-line
                                    helm-make
                                    helm-projectile
                                    helm-themes
                                    helm-swoop
                                    helm-mode-manager
                                    )
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 5
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'org-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(;; spacemacs-dark
                         ;; spacemacs-light
                         ;; solarized-light
                         ;; solarized-dark
                         leuven
                         monokai
                         zenburn)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; (Not implemented) dotspacemacs-distinguish-gui-ret nil
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers 'relative
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'changed
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (setq configuration-layer--elpa-archives
        '(("melpa-cn" . "https://elpa.zilongshanren.com/melpa/")
          ("org-cn"   . "https://elpa.zilongshanren.com/org/")
          ("gnu-cn"   . "https://elpa.zilongshanren.com/gnu/")))

  ;; https://github.com/syl20bnr/spacemacs/issues/2705
  ;; (setq tramp-mode nil)
  (setq tramp-ssh-controlmaster-options "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")

  ;; ss proxy. But it will cause anacond-mode failed.
  (setq socks-server '("Default server" "127.0.0.1" 1080 5))
  (setq evil-shift-round nil)
  (setq byte-compile-warnings '(not obsolete))
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  ;; remap "SPC SPC" to avy-char
  (evil-leader/set-key "SPC" 'evil-avy-goto-char)

  ;; remap "SPC '" to eshell
  (evil-leader/set-key "'" 'eshell)

  ;; ;; remap "M-SPC" to set-mark-command
  ;; (global-set-key (kbd "M-SPC") 'set-mark-command)

  ;; fcitx.el
  (require 'fcitx)
  ;; Make sure the following comes before `(fcitx-aggressive-setup)'
  (setq fcitx-active-evil-states '(insert emacs hybrid)) ; if you use hybrid mode
  (fcitx-aggressive-setup)
  (fcitx-prefix-keys-add "M-m") ; M-m is common in Spacemacs
  ;; (setq fcitx-use-dbus t) ; uncomment if you're using Linux

  ;; youdao dictionary
  (evil-leader/set-key "oy" 'youdao-dictionary-search-at-point+)

  ;; org-mode align table
  (when (configuration-layer/layer-usedp 'chinese)
    (spacemacs//set-monospaced-font "Dejavu Sans Mono" "Wenquanyi Micro Hei" 14 16))

  ;; org-babel
  ;;   (org-babel-do-load-languages
  ;;    'org-babel-load-languages
  ;;    '((C . t)
  ;;      (ditaa . t)
  ;;      (dot . t)
  ;;      (latex . t)
  ;;      (octave . t)
  ;;      (org . t)
  ;;      (perl . t)
  ;;      (python . t)
  ;;      (R . t)
  ;;      (ruby . t)
  ;;      (sh . t)
  ;;      (sqlite . t)
  ;;      ))

  ;; Utility functions
  (defun bb/define-key (keymap &rest bindings)
    (declare (indent 1))
    (while bindings
      (define-key keymap (pop bindings) (pop bindings))))
  (bb/define-key evil-normal-state-map
    "+" 'spacemacs/evil-numbers-increase
    "_" 'spacemacs/evil-numbers-decrease
    "\\" 'evil-repeat-find-char-reverse
    "[s" (lambda (n) (interactive "p") (dotimes (c n nil) (insert " ")))
    "]s" (lambda (n) (interactive "p")
           (forward-char) (dotimes (c n nil) (insert " ")) (backward-char (1+ n))))

  (bb/define-key company-active-map
    (kbd "C-w") 'evil-delete-backward-word)

  (add-hook 'text-mode-hook 'auto-fill-mode)
  (add-hook 'org-mode-hook 'auto-fill-mode)

  (remove-hook 'emacs-lisp-mode-hook 'auto-compile-mode)
  ;; http://emacsredux.com/blog/2014/04/05/which-function-mode/
  ;; when editing js file, this feature is very useful
  (setq-default header-line-format
                '((which-func-mode ("" which-func-format " "))))

  ;; show smartparens mode will cause Emacs frozen when use swiper...
  ;; (turn-off-show-smartparens-mode)
  ;; (add-hook 'emacs-lisp-mode-hook 'turn-on-show-smartparens-mode)

  ;; improve the performance of opening large file
  (add-hook 'org-mode-hook (lambda () (spacemacs/toggle-line-numbers-off)) 'append)
  (defun spacemacs/check-large-file ()
    (when (> (buffer-size) 500000)
      (progn (fundamental-mode)
             (hl-line-mode -1))))

  (add-hook 'find-file-hook 'spacemacs/check-large-file)
  (spacemacs/toggle-automatic-symbol-highlight-on)

  ;; For python
  (add-hook 'python-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
  ;; For ruby
  (add-hook 'ruby-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
  ;; For Javascript
  (add-hook 'js2-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
  (spacemacs/set-leader-keys "ri" 'ivy-resume)
  (spacemacs|add-company-hook 'text-mode)

  (defadvice find-file (before make-directory-maybe (filename &optional wildcards) activate)
    "Create parent directory if not exists while visiting file."
    (unless (file-exists-p filename)
      (let ((dir (file-name-directory filename)))
        (unless (file-exists-p dir)
          (make-directory dir t)))))

  (add-hook 'minibuffer-inactive-mode-hook '(lambda() (set (make-local-variable 'semantic-mode) nil)))
  ;; http://trey-jackson.blogspot.com/2010/04/emacs-tip-36-abort-minibuffer-when.html
;;  (defun zilongshanren/stop-using-minibuffer ()
;;    "kill the minibuffer"
;;    (when (and (>= (recursion-depth) 1) (active-minibuffer-window))
;;      (abort-recursive-edit)))

  ;; (add-hook 'mouse-leave-buffer-hook 'zilongshanren/stop-using-minibuffer)

  (spacemacs/declare-prefix "ot" "Toggle")

  (add-hook 'doc-view-mode-hook 'auto-revert-mode)
  ;; Don't move back the cursor one position when exiting insert mode
  (setq evil-move-cursor-back nil)
  (global-hungry-delete-mode t)
  (defhydra hydra-hotspots (:color blue)
    "Hotspots"
    ("b" org-octopress "blog")
    ;; ("r" zilongshanren/run-current-file "run current file")
    )

  (define-key global-map (kbd "<f1>") 'hydra-hotspots/body)
  (with-eval-after-load 'whitespace
    (diminish 'whitespace-mode))
  (with-eval-after-load 'smartparens
    (diminish 'smartparens-mode))
  (with-eval-after-load 'which-key
    (diminish 'which-key-mode))
  (with-eval-after-load 'hungry-delete
    (diminish 'hungry-delete-mode))

  (define-fringe-bitmap 'right-curly-arrow
    [#b00000000
     #b00000000
     #b00000000
     #b00000000
     #b01110000
     #b00010000
     #b00010000
     #b00000000])
  (define-fringe-bitmap 'left-curly-arrow
    [#b00000000
     #b00001000
     #b00001000
     #b00001110
     #b00000000
     #b00000000
     #b00000000
     #b00000000])
  ;; tips:  use diminish-undo to toggle mode l
  (if (configuration-layer/layer-usedp 'helm)
      (spacemacs/set-leader-keys "rh" 'helm-resume))
  (when (configuration-layer/layer-usedp 'helm)
    (spacemacs/set-leader-keys "sj" 'counsel-imenu))
  ;; (when (configuration-layer/layer-usedp 'ivy)
  ;;   (setq projectile-switch-project-action 'zilongshanren/open-file-with-projectile-or-counsel-git))
  ;; (use-package powerline
  ;;   :config
  ;;   (powerline-center-evil-theme ))

  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
