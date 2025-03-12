use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME           => 'chewmail',
    VERSION_FROM   => 'chewmail',
    EXE_FILES      => ['chewmail'],
    MAN1PODS       => { 'chewmail' => '$(INST_MAN1DIR)/chewmail.$(MAN1EXT)' },
    AUTHOR         => 'Eric Dorland <eric@kuroneko.ca>',
    ABSTRACT       => 'chewmail is a program for archiving mail.',
);
