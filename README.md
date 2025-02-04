# chewmail 

`chewmail` is a program for archiving mail. It is inspired by the by the
Python-based `archivemail`, but with more useful semantics. All mail
is archived to the mailbox specified with the `--output-box` switch,
in mbox format. It can read mailboxes in mbox, Maildir and MH formats.

Internally, `chewmail` uses [Mail::Box](https://metacpan.org/pod/Mail::Box),
so it supports file namesand URLs supported by that module.
