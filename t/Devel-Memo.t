# $Id: Devel-Memo.t 1.4 Fri, 05 Sep 1997 16:08:15 -0400 jesse $ -*- Perl -*-

use mods q{
  Devel::Memo, Test::Helper;
};

test {
  comm 'Creating new Devel::Memo object and binding to &func1';
  my $cnt=0;
  *func1=new Devel::Memo sub($$@) {$cnt++}, qw(-eq -equal -rest);
  comm 'Running func1 on some arguments';
  ok func1(17, [1, 2])==0;
  ok func1(17, [1, 2])==0;
  ok func1(16, [1, 2])==1;
  ok func1(16, {foo => 1})==2;
  ok func1(16, {foo => 1})==2;
  ok func1(16, {foo => 1}, {bar => 3})==3;
  ok func1(16, {foo => 1}, {bar => 3}, 5)==4;
  ok func1(16, {foo => 1}, {bar => 3}, 5)==4;
  ok func1(16, [1, 2])==1;
  ok not runs {func1(5)};
};
