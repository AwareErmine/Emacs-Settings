;;; cdlatex-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "cdlatex" "cdlatex.el" (0 0 0 0))
;;; Generated autoloads from cdlatex.el

(autoload 'turn-on-cdlatex "cdlatex" "\
Turn on CDLaTeX minor mode." nil nil)

(autoload 'cdlatex-mode "cdlatex" "\
Minor mode for editing scientific LaTeX documents.

If called interactively, enable Cdlatex mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

Here is a list of features: \\<cdlatex-mode-map>

                           KEYWORD COMMANDS
                           ----------------

Many CDLaTeX commands are activated with an abbrev-like
mechanism.  When a keyword is typed followed \\[cdlatex-tab], the
keyword is deleted from the buffer and a command is executed.
You can get a full list of these commands with
\\[cdlatex-command-help].  For example, when you type `fr<TAB>',
CDLaTeX will insert \\frac{}{}.

When inserting templates like \\='\\frac{}{}\\=', the cursor is
positioned properly.  Use \\[cdlatex-tab] to move through
templates.  \\[cdlatex-tab] also kills unnecessary braces around
subscripts and superscripts at point.

                     MATH CHARACTERS AND ACCENTS
                     ---------------------------

\\[cdlatex-math-symbol] followed by any character inserts a LaTeX
math character
      e.g. \\[cdlatex-math-symbol]e
        => \\epsilon

\\[cdlatex-math-symbol]\\[cdlatex-math-symbol] followed by any
character inserts other LaTeX math character
      e.g. \\[cdlatex-math-symbol]\\[cdlatex-math-symbol]e
        => \\varepsilon
\\[cdlatex-math-modify]  followed by character puts a math
accent on a letter or symbol
      e.g. \\[cdlatex-math-symbol]a\\[cdlatex-math-modify]~
        => \\tilde{\\alpha}

CDLaTeX is aware of the math environments in LaTeX and modifies
the workings of some functions according to the current status.

                             ONLINE HELP
                             -----------

After pressing \\[cdlatex-math-symbol] or
\\[cdlatex-math-modify], CDLaTeX waits for a short time for the
second character.  If that does not come, it will pop up a window
displaying the available characters and their meanings.

                             KEY BINDINGS
                             ------------
\\{cdlatex-mode-map}

Under X, many functions will be available also in a menu on the menu bar.

Entering `cdlatex-mode' calls the hook cdlatex-mode-hook.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-cdlatex-electricindex "cdlatex" "\
Turn on cdlatex-electricindex minor mode." nil nil)

(autoload 'cdlatex-electricindex-mode "cdlatex" "\
Minor mode for electric insertion of numbered indixes.

If called interactively, enable Cdlatex-Electricindex mode if ARG
is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

cdlatex-electricindex is a minor mode supporting fast digit index
insertation in LaTeX math. For example typing x 1 2 will insert
x_{12}.

To turn cdlatex-electricindex Minor Mode on and off in a
particular buffer, use `M-x cdlatex-electricindex-mode'.

To turn on cdlatex-electricindex Minor Mode for all LaTeX files,
add one of the following lines to your .emacs file:

    (add-hook 'latex-mode-hook #'turn-on-cdlatex-electricindex)

This index insertion will only work when the cursor is in a LaTeX
math environment, based on (texmathp). If texmathp is not
available, math math-mode will be assumed.

Entering `cdlatex-electricindex-mode' calls the hook
`cdlatex-electricindex-mode-hook'.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cdlatex" '("cdlatex-")))

;;;***

;;;### (autoloads nil nil ("cdlatex-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; cdlatex-autoloads.el ends here
