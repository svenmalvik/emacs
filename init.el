(setq display-time-24hr-format t
      display-time-day-and-date t)
      (display-time)

(add-to-list 'load-path "/etc/emacs/")

(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))
