#!/sig/local/bin/perl5 -w

use ExtUtils::MakeMaker;

WriteMakefile(
# $Format: " VERSION => '$DevelMemoRelease$',"$
 VERSION => '0.003',
              NAME => 'Devel::Memo',
	      PREREQ_PM => {
			    FreezeThaw => 0,
			   },
#	      EXE_FILES => []
);
