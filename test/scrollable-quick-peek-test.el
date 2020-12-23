;;; scrollable-quick-peek-test.el --- Tests  -*- lexical-binding: t; -*-

;; Copyright (C) 2020 Pablo Barrantes
;; Author: Pablo Barrantes <xjpablobrx@gmail.com>

;;; Commentary:
;; scrollable-quick-peek tests.

;;; Code:

(require 'scrollable-quick-peek)

(ert-deftest scrollable-quick-peek-show-test ()
  "Arguments validation."

  ; Only integer values are allowed
  (should-error (scrollable-quick-peek-show "foo" (point) 'none 1))
  (should-error (scrollable-quick-peek-show "foo" (point) 1 'none))

  (should (scrollable-quick-peek-show "foo" (point) 2 4)))

  ; TODO: Test transient keymap state

;;; scrollable-quick-peek-test.el ends here
