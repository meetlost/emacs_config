;; .emacs

;; Global
(setq-default make-backup-files nil)
(setq-default auto-save-default nil)

;; For Erlang
(setq load-path (cons "/Users/by/local/pkgs/erlang/OTP-23.1.1/lib/erlang/lib/tools-3.4.1/emacs" load-path))
(setq erlang-root-dir "/Users/by/local/pkgs/erlang/OTP-23.1.1/lib/erlang")
(setq exec-path (cons "/Users/by/local/pkgs/erlang/OTP-23.1.1/lib/erlang/bin" exec-path))
(require 'erlang-start)
(add-hook 'erlang-mode-hook
          '(lambda()
             (setq indent-tabs-mode nil)))
(add-to-list 'auto-mode-alist '("rebar.config" . erlang-mode))
(add-to-list 'auto-mode-alist '("sys.config" . erlang-mode))

;; For C
(add-hook 'c-mode-hook
          '(lambda()
             (setq indent-tabs-mode nil)
             (setq c-basic-offset 4)))
