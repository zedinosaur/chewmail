# New in 1.4.1:

* Fix a variable typo

# New in 1.4:

* Flush output boxes before closing input boxes.

# New in 1.3:

* Don't remove empty mailboxes.

# New in 1.2:

* Check that an output box is actually specified
* Fix --read-only typo in pod docs, thanks Neil McGovern

# New in 1.1:

* Workaround a bug in Mail::Box that was preventing maildirs 
  from working.
* Default to the current time if a timestamp is not present.
* Accept multiple mailboxes on the command line, not just one.
* Close the source mailbox now.
* Modified patch from Cyprien <cyprien@cypou.net> to preserve 
  timestamps on the input mailbox. 
