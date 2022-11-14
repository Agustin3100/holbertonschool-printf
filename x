MAN(1)                                            Manual pager utils                                           MAN(1)

NNAAMMEE
       man - an interface to the system reference manuals

SSYYNNOOPPSSIISS
       mmaann [_m_a_n _o_p_t_i_o_n_s] [[_s_e_c_t_i_o_n] _p_a_g_e ...] ...
       mmaann --kk [_a_p_r_o_p_o_s _o_p_t_i_o_n_s] _r_e_g_e_x_p ...
       mmaann --KK [_m_a_n _o_p_t_i_o_n_s] [_s_e_c_t_i_o_n] _t_e_r_m ...
       mmaann --ff [_w_h_a_t_i_s _o_p_t_i_o_n_s] _p_a_g_e ...
       mmaann --ll [_m_a_n _o_p_t_i_o_n_s] _f_i_l_e ...
       mmaann --ww|--WW [_m_a_n _o_p_t_i_o_n_s] _p_a_g_e ...

DDEESSCCRRIIPPTTIIOONN
       mmaann  is the system's manual pager.  Each _p_a_g_e argument given to mmaann is normally the name of a program, utility
       or function.  The _m_a_n_u_a_l _p_a_g_e associated with each of these arguments is then found and displayed.  A _s_e_c_t_i_o_n,
       if  provided,  will direct mmaann to look only in that _s_e_c_t_i_o_n of the manual.  The default action is to search in
       all of the available _s_e_c_t_i_o_n_s following a pre-defined order (see DDEEFFAAUULLTTSS), and to show only  the  first  _p_a_g_e
       found, even if _p_a_g_e exists in several _s_e_c_t_i_o_n_s.

       The table below shows the _s_e_c_t_i_o_n numbers of the manual followed by the types of pages they contain.

       1   Executable programs or shell commands
       2   System calls (functions provided by the kernel)
       3   Library calls (functions within program libraries)
       4   Special files (usually found in _/_d_e_v)
       5   File formats and conventions, e.g. _/_e_t_c_/_p_a_s_s_w_d
       6   Games
       7   Miscellaneous (including macro packages and conventions), e.g. mmaann(7), ggrrooffff(7)
       8   System administration commands (usually only for root)
       9   Kernel routines [Non standard]

       A manual _p_a_g_e consists of several sections.

       Conventional  section  names  include  NNAAMMEE,  SSYYNNOOPPSSIISS,  CCOONNFFIIGGUURRAATTIIOONN, DDEESSCCRRIIPPTTIIOONN, OOPPTTIIOONNSS, EEXXIITT SSTTAATTUUSS, RREE‐‐
       TTUURRNN VVAALLUUEE, EERRRROORRSS, EENNVVIIRROONNMMEENNTT, FFIILLEESS, VVEERRSSIIOONNSS, CCOONNFFOORRMMIINNGG TTOO, NNOOTTEESS, BBUUGGSS, EEXXAAMMPPLLEE, AAUUTTHHOORRSS, and SSEEEE AALLSSOO.

       The following conventions apply to the SSYYNNOOPPSSIISS section and can be used as a guide in other sections.

       bboolldd tteexxtt          type exactly as shown.
       _i_t_a_l_i_c _t_e_x_t        replace with appropriate argument.
       [--aabbcc]             any or all arguments within [ ] are optional.
       --aa|--bb              options delimited by | cannot be used together.
       _a_r_g_u_m_e_n_t ...       _a_r_g_u_m_e_n_t is repeatable.
       [_e_x_p_r_e_s_s_i_o_n] ...   entire _e_x_p_r_e_s_s_i_o_n within [ ] is repeatable.

       Exact rendering may vary depending on the output device.  For instance, man will usually not be able to render
       italics when running in a terminal, and will typically use underlined or coloured text instead.

       The  command  or function illustration is a pattern that should match all possible invocations.  In some cases
       it is advisable to illustrate several exclusive invocations as is shown in the SSYYNNOOPPSSIISS section of this manual
       page.

EEXXAAMMPPLLEESS
       mmaann _l_s
           Display the manual page for the _i_t_e_m (program) _l_s.

       mmaann _m_a_n._7
           Display  the manual page for macro package _m_a_n from section _7.  (This is an alternative spelling of "mmaann _7
           _m_a_n".)

       mmaann ''_m_a_n(_7)'
           Display the manual page for macro package _m_a_n from section _7.  (This is another  alternative  spelling  of
           "mmaann  _7  _m_a_n".  It may be more convenient when copying and pasting cross-references to manual pages.  Note
           that the parentheses must normally be quoted to protect them from the shell.)

       mmaann --aa _i_n_t_r_o
           Display, in succession, all of the available _i_n_t_r_o manual pages contained within the manual.  It is possi‐
           ble to quit between successive displays or skip any of them.

       mmaann --tt _b_a_s_h | _l_p_r _-_P_p_s
           Format  the  manual  page for _b_a_s_h into the default ttrrooffff or ggrrooffff format and pipe it to the printer named
           _p_s.  The default output for ggrrooffff is usually PostScript.  mmaann ----hheellpp should advise as to  which  processor
           is bound to the --tt option.

       mmaann --ll --TT_d_v_i _._/_f_o_o_._1_x_._g_z >> _._/_f_o_o_._1_x_._d_v_i
           This command will decompress and format the nroff source manual page _._/_f_o_o_._1_x_._g_z into a ddeevviiccee iinnddeeppeennddeenntt
           ((ddvvii)) file.  The redirection is necessary as the --TT flag causes output to be directed to  ssttddoouutt  with  no
           pager.   The output could be viewed with a program such as xxddvvii or further processed into PostScript using
           a program such as ddvviippss.

       mmaann --kk _p_r_i_n_t_f
           Search the short descriptions and manual page names for the keyword _p_r_i_n_t_f as regular  expression.   Print
           out any matches.  Equivalent to aapprrooppooss _p_r_i_n_t_f..

       mmaann --ff _s_m_a_i_l
           Lookup the manual pages referenced by _s_m_a_i_l and print out the short descriptions of any found.  Equivalent
           to wwhhaattiiss _s_m_a_i_l..

OOVVEERRVVIIEEWW
       Many options are available to mmaann in order to give as much flexibility as possible to the user.   Changes  can
       be  made to the search path, section order, output processor, and other behaviours and operations detailed be‐
       low.

       If set, various environment variables are interrogated to determine the operation of mmaann.  It is  possible  to
       set  the "catch-all" variable $MMAANNOOPPTT to any string in command line format, with the exception that any spaces
       used as part of an option's argument must be escaped (preceded by a backslash).  mmaann will parse $MMAANNOOPPTT  prior
       to  parsing  its own command line.  Those options requiring an argument will be overridden by the same options
       found on the command line.  To reset all of the options set in $MMAANNOOPPTT, --DD can be  specified  as  the  initial
       command  line  option.   This will allow man to "forget" about the options specified in $MMAANNOOPPTT, although they
       must still have been valid.

       Manual pages are normally stored in nnrrooffff(1) format under a directory such as _/_u_s_r_/_s_h_a_r_e_/_m_a_n.  In some instal‐
       lations, there may also be preformatted _c_a_t _p_a_g_e_s to improve performance.  See mmaannppaatthh(5) for details of where
       these files are stored.

       This package supports manual pages in multiple languages, controlled by your _l_o_c_a_l_e.  If your system  did  not
       set  this  up for you automatically, then you may need to set $LLCC__MMEESSSSAAGGEESS, $LLAANNGG, or another system-dependent
       environment variable to indicate your preferred locale, usually specified in the PPOOSSIIXX format:

       <_l_a_n_g_u_a_g_e>[__<_t_e_r_r_i_t_o_r_y>[..<_c_h_a_r_a_c_t_e_r_-_s_e_t>[,,<_v_e_r_s_i_o_n>]]]

       If the desired page is available in your _l_o_c_a_l_e, it will be displayed in lieu of the standard (usually  Ameri‐
       can English) page.

       If you find that the translations supplied with this package are not available in your native language and you
       would like to supply them, please contact the maintainer who will be coordinating such activity.

       Individual manual pages are normally written and maintained by the maintainers of the  program,  function,  or
       other  topic  that  they  document, and are not included with this package.  If you find that a manual page is
       missing or inadequate, please report that to the maintainers of the package in question.

       For information regarding other features and extensions available with this manual pager, please read the doc‐
       uments supplied with the package.

DDEEFFAAUULLTTSS
       The  order  of sections to search may be overridden by the environment variable $MMAANNSSEECCTT or by the SSEECCTTIIOONN di‐
       rective in _/_e_t_c_/_m_a_n_p_a_t_h_._c_o_n_f_i_g.  By default it is as follows:

              1 n l 8 3 2 3posix 3pm 3perl 3am 5 4 9 6 7

       The formatted manual page is displayed using a _p_a_g_e_r.  This can be specified in a number of ways, or else will
       fall back to a default (see option --PP for details).

       The filters are deciphered by a number of means.  Firstly, the command line option --pp or the environment vari‐
       able $MMAANNRROOFFFFSSEEQQ is interrogated.  If --pp was not used and the environment variable was not  set,  the  initial
       line of the nroff file is parsed for a preprocessor string.  To contain a valid preprocessor string, the first
       line must resemble

       ''\\"" <ssttrriinngg>

       where ssttrriinngg can be any combination of letters described by option --pp below.

       If none of the above methods provide any filter information, a default set is used.

       A formatting pipeline is formed from the filters and the primary formatter (nnrrooffff or [ttgg]rrooffff with --tt) and ex‐
       ecuted.   Alternatively,  if  an  executable program _m_a_n_d_b___n_f_m_t (or _m_a_n_d_b___t_f_m_t with --tt) exists in the man tree
       root, it is executed instead.  It gets passed the manual source file, the preprocessor string, and  optionally
       the device specified with --TT or --EE as arguments.

OOPPTTIIOONNSS
       Non-argument  options  that  are  duplicated either on the command line, in $MMAANNOOPPTT, or both, are not harmful.
       For options that require an argument, each duplication will override the previous argument value.

   GGeenneerraall ooppttiioonnss
       --CC _f_i_l_e, ----ccoonnffiigg--ffiillee==_f_i_l_e
              Use this user configuration file rather than the default of _~_/_._m_a_n_p_a_t_h.

       --dd, ----ddeebbuugg
              Print debugging information.

       --DD, ----ddeeffaauulltt
              This option is normally issued as the very first option and resets mmaann''ss behaviour to its default.  Its
              use  is to reset those options that may have been set in $MMAANNOOPPTT.  Any options that follow --DD will have
              their usual effect.

       ----wwaarrnniinnggss[=_w_a_r_n_i_n_g_s]
              Enable warnings from _g_r_o_f_f.  This may be used to perform sanity checks on the  source  text  of  manual
              pages.   _w_a_r_n_i_n_g_s  is  a  comma-separated  list of warning names; if it is not supplied, the default is
              "mac".  See the “Warnings” node in iinnffoo ggrrooffff for a list of available warning names.

   MMaaiinn mmooddeess ooff ooppeerraattiioonn
       --ff, ----wwhhaattiiss
              Equivalent to wwhhaattiiss.  Display a short description from the manual page, if available.   See  wwhhaattiiss(1)
              for details.

       --kk, ----aapprrooppooss
              Equivalent to aapprrooppooss.  Search the short manual page descriptions for keywords and display any matches.
              See aapprrooppooss(1) for details.

       --KK, ----gglloobbaall--aapprrooppooss
              Search for text in all manual pages.  This is a brute-force search, and is likely to take some time; if
              you  can,  you should specify a section to reduce the number of pages that need to be searched.  Search
              terms may be simple strings (the default), or regular expressions if the ----rreeggeexx option is used.

              Note that this searches the _s_o_u_r_c_e_s of the manual pages, not the rendered  text,  and  so  may  include
              false positives due to things like comments in source files.  Searching the rendered text would be much
              slower.

       --ll, ----llooccaall--ffiillee
              Activate "local" mode.  Format and display local manual files instead of searching through the system's
              manual  collection.   Each manual page argument will be interpreted as an nroff source file in the cor‐
              rect format.  No cat file is produced.  If '-' is listed as one of the arguments, input will  be  taken
              from  stdin.   When this option is not used, and man fails to find the page required, before displaying
              the error message, it attempts to act as if this option was supplied, using the name as a filename  and
              looking for an exact match.

       --ww, ----wwhheerree, ----ppaatthh, ----llooccaattiioonn
              Don't  actually  display the manual page, but do print the location of the source nroff file that would
              be formatted.  If the --aa option is also used, then print the locations of all source files  that  match
              the search criteria.

       --WW, ----wwhheerree--ccaatt, ----llooccaattiioonn--ccaatt
              Don't  actually  display  the  manual page, but do print the location of the preformatted cat file that
              would be displayed.  If the --aa option is also used, then print the locations of  all  preformatted  cat
              files that match the search criteria.

              If  --ww  and --WW are both used, then print both source file and cat file separated by a space.  If all of
              --ww, --WW, and --aa are used, then do this for each possible match.

       --cc, ----ccaattmmaann
              This option is not for general use and should only be used by the ccaattmmaann program.

       --RR _e_n_c_o_d_i_n_g, ----rreeccooddee=_e_n_c_o_d_i_n_g
              Instead of formatting the manual page in the usual way, output its source converted  to  the  specified
              _e_n_c_o_d_i_n_g.   If  you already know the encoding of the source file, you can also use mmaannccoonnvv(1) directly.
              However, this option allows you to convert several manual pages to a single encoding without having  to
              explicitly state the encoding of each, provided that they were already installed in a structure similar
              to a manual page hierarchy.

              Consider using mmaann--rreeccooddee(1) instead for converting multiple manual pages, since it  has  an  interface
              designed for bulk conversion and so can be much faster.

   FFiinnddiinngg mmaannuuaall ppaaggeess
       --LL _l_o_c_a_l_e, ----llooccaallee==_l_o_c_a_l_e
              mmaann will normally determine your current locale by a call to the C function sseettllooccaallee(3) which interro‐
              gates various environment variables, possibly including $LLCC__MMEESSSSAAGGEESS and $LLAANNGG.  To  temporarily  over‐
              ride  the  determined  value,  use this option to supply a _l_o_c_a_l_e string directly to mmaann.  Note that it
              will not take effect until the search for pages actually begins.  Output such as the help message  will
              always be displayed in the initially determined locale.

       --mm _s_y_s_t_e_m[,...], ----ssyysstteemmss==_s_y_s_t_e_m[,...]
              If this system has access to other operating system's manual pages, they can be accessed using this op‐
              tion.  To search for a manual page from NewOS's manual page collection, use the option --mm NNeewwOOSS.

              The _s_y_s_t_e_m specified can be a combination of comma delimited operating  system  names.   To  include  a
              search  of  the  native  operating  system's  manual pages, include the system name mmaann in the argument
              string.  This option will override the $SSYYSSTTEEMM environment variable.

       --MM _p_a_t_h, ----mmaannppaatthh==_p_a_t_h
              Specify an alternate manpath to use.  By default, mmaann uses mmaannppaatthh derived code to determine  the  path
              to search.  This option overrides the $MMAANNPPAATTHH environment variable and causes option --mm to be ignored.

              A  path  specified as a manpath must be the root of a manual page hierarchy structured into sections as
              described in the man-db manual (under "The manual page system").  To view manual pages outside such hi‐
              erarchies, see the --ll option.

       --SS _l_i_s_t, --ss _l_i_s_t, ----sseeccttiioonnss==_l_i_s_t
              The given _l_i_s_t is a colon- or comma-separated list of sections, used to determine which manual sections
              to search and in what order.  This option overrides the $MMAANNSSEECCTT environment variable.  (The --ss  spell‐
              ing is for compatibility with System V.)

       --ee _s_u_b_-_e_x_t_e_n_s_i_o_n, ----eexxtteennssiioonn==_s_u_b_-_e_x_t_e_n_s_i_o_n
              Some  systems incorporate large packages of manual pages, such as those that accompany the TTccll package,
              into the main manual page hierarchy.  To get around the problem of having two  manual  pages  with  the
              same  name  such as eexxiitt(3), the TTccll pages were usually all assigned to section ll.  As this is unfortu‐
              nate, it is now possible to put the pages in the correct section, and to assign a specific  "extension"
              to  them,  in this case, eexxiitt(3tcl).  Under normal operation, mmaann will display eexxiitt(3) in preference to
              eexxiitt(3tcl).  To negotiate this situation and to avoid having to know which section the page you require
              resides  in,  it  is  now possible to give mmaann a _s_u_b_-_e_x_t_e_n_s_i_o_n string indicating which package the page
              must belong to.  Using the above example, supplying the option --ee ttccll to mmaann will restrict  the  search
              to pages having an extension of **ttccll.

       --ii, ----iiggnnoorree--ccaassee
              Ignore case when searching for manual pages.  This is the default.

       --II, ----mmaattcchh--ccaassee
              Search for manual pages case-sensitively.

       ----rreeggeexx
              Show all pages with any part of either their names or their descriptions matching each _p_a_g_e argument as
              a regular expression, as with aapprrooppooss(1).  Since there is usually no reasonable way to  pick  a  "best"
              page when searching for a regular expression, this option implies --aa.

       ----wwiillddccaarrdd
              Show  all  pages  with any part of either their names or their descriptions matching each _p_a_g_e argument
              using shell-style wildcards, as with aapprrooppooss(1) ----wwiillddccaarrdd.  The _p_a_g_e argument must  match  the  entire
              name or description, or match on word boundaries in the description.  Since there is usually no reason‐
              able way to pick a "best" page when searching for a wildcard, this option implies --aa.

       ----nnaammeess--oonnllyy
              If the ----rreeggeexx or ----wwiillddccaarrdd option is used, match only page names,  not  page  descriptions,  as  with
              wwhhaattiiss(1).  Otherwise, no effect.

       --aa, ----aallll
              By  default,  mmaann will exit after displaying the most suitable manual page it finds.  Using this option
              forces mmaann to display all the manual pages with names that match the search criteria.

       --uu, ----uuppddaattee
              This option causes mmaann to update its database caches of installed manual pages.  This is only needed in
              rare situations, and it is normally better to run mmaannddbb(8) instead.

       ----nnoo--ssuubbppaaggeess
              By  default,  mmaann will try to interpret pairs of manual page names given on the command line as equiva‐
              lent to a single manual page name containing a hyphen or an underscore.  This supports the common  pat‐
              tern of programs that implement a number of subcommands, allowing them to provide manual pages for each
              that can be accessed using similar syntax as would be used to invoke the subcommands  themselves.   For
              example:

                $ man -aw git diff
                /usr/share/man/man1/git-diff.1.gz

              To disable this behaviour, use the ----nnoo--ssuubbppaaggeess option.

                $ man -aw --no-subpages git diff
                /usr/share/man/man1/git.1.gz
                /usr/share/man/man3/Git.3pm.gz
                /usr/share/man/man1/diff.1.gz

   CCoonnttrroolllliinngg ffoorrmmaatttteedd oouuttppuutt
       --PP _p_a_g_e_r, ----ppaaggeerr==_p_a_g_e_r
              Specify  which  output  pager  to use.  By default, mmaann uses ppaaggeerr, falling back to ccaatt if ppaaggeerr is not
              found or is not executable.  This option overrides the $MMAANNPPAAGGEERR environment variable,  which  in  turn
              overrides the $PPAAGGEERR environment variable.  It is not used in conjunction with --ff or --kk.

              The  value  may  be a simple command name or a command with arguments, and may use shell quoting (back‐
              slashes, single quotes, or double quotes).  It may not use pipes to connect multiple commands;  if  you
              need  that,  use a wrapper script, which may take the file to display either as an argument or on stan‐
              dard input.

       --rr _p_r_o_m_p_t, ----pprroommpptt==_p_r_o_m_p_t
              If a recent version of lleessss is used as the pager, mmaann will attempt to set its prompt and some  sensible
              options.  The default prompt looks like

               MMaannuuaall ppaaggee _n_a_m_e((_s_e_c)) lliinnee _x

              where  _n_a_m_e  denotes the manual page name, _s_e_c denotes the section it was found under and _x the current
              line number.  This is achieved by using the $LLEESSSS environment variable.

              Supplying --rr with a string will override this default.  The string may contain the text  $$MMAANN__PPNN  which
              will be expanded to the name of the current manual page and its section name surrounded by "(" and ")".
              The string used to produce the default could be expressed as

              \\ MMaannuuaall\\ ppaaggee\\ \\$$MMAANN__PPNN\\ ??llttlliinnee\\ %%lltt??LL//%%LL..::
              bbyyttee\\ %%bbBB??ss//%%ss....??\\ ((EENNDD))::??ppBB\\ %%ppBB\\\\%%....
              ((pprreessss hh ffoorr hheellpp oorr qq ttoo qquuiitt))

              It is broken into three lines here for the sake of readability only.  For its meaning see  the  lleessss(1)
              manual  page.   The  prompt string is first evaluated by the shell.  All double quotes, back-quotes and
              backslashes in the prompt must be escaped by a preceding backslash.  The prompt string may  end  in  an
              escaped $ which may be followed by further options for less.  By default mmaann sets the --iixx88 options.

              The $MMAANNLLEESSSS environment variable described below may be used to set a default prompt string if none is
              supplied on the command line.

       --77, ----aasscciiii
              When viewing a pure _a_s_c_i_i(7) manual page on a 7 bit terminal or terminal emulator, some characters  may
              not  display  correctly when using the _l_a_t_i_n_1(7) device description with GGNNUU nnrrooffff.  This option allows
              pure _a_s_c_i_i manual pages to be displayed in _a_s_c_i_i with the _l_a_t_i_n_1 device.  It  will  not  translate  any
              _l_a_t_i_n_1  text.   The following table shows the translations performed: some parts of it may only be dis‐
              played properly when using GGNNUU nnrrooffff's _l_a_t_i_n_1(7) device.

              Description           Octal   latin1   ascii
              ─────────────────────────────────────────────
              continuation hyphen    255      ‐        -
              bullet (middle dot)    267      •        o
              acute accent           264      ´        '
              multiplication sign    327      ×        x

              If the _l_a_t_i_n_1 column displays correctly, your terminal may be set up for _l_a_t_i_n_1 characters and this op‐
              tion  is not necessary.  If the _l_a_t_i_n_1 and _a_s_c_i_i columns are identical, you are reading this page using
              this option or mmaann did not format this page using the _l_a_t_i_n_1 device description.  If the _l_a_t_i_n_1  column
              is missing or corrupt, you may need to view manual pages with this option.

              This  option  is  ignored  when using options --tt, --HH, --TT, or --ZZ and may be useless for nnrrooffff other than
              GGNNUU''ss.

       --EE _e_n_c_o_d_i_n_g, ----eennccooddiinngg=_e_n_c_o_d_i_n_g
              Generate output for a character encoding other than the default.  For backward compatibility,  _e_n_c_o_d_i_n_g
              may  be  an  nnrrooffff  device  such as aasscciiii, llaattiinn11, or uuttff88 as well as a true character encoding such as
              UUTTFF--88.

       ----nnoo--hhyypphheennaattiioonn, ----nnhh
              Normally, nnrrooffff will automatically hyphenate text at line breaks even in words that do not contain  hy‐
              phens,  if  it is necessary to do so to lay out words on a line without excessive spacing.  This option
              disables automatic hyphenation, so words will only be hyphenated if they already contain hyphens.

              If you are writing a manual page and simply want to prevent nnrrooffff from hyphenating a word at  an  inap‐
              propriate point, do not use this option, but consult the nnrrooffff documentation instead; for instance, you
              can put "\%" inside a word to indicate that it may be hyphenated at that point,  or  put  "\%"  at  the
              start of a word to prevent it from being hyphenated.

       ----nnoo--jjuussttiiffiiccaattiioonn, ----nnjj
              Normally,  nnrrooffff will automatically justify text to both margins.  This option disables full justifica‐
              tion, leaving justified only to the left margin, sometimes called "ragged-right" text.

              If you are writing a manual page and simply want to prevent nnrrooffff from justifying  certain  paragraphs,
              do  not  use  this  option,  but consult the nnrrooffff documentation instead; for instance, you can use the
              ".na", ".nf", ".fi", and ".ad" requests to temporarily disable adjusting and filling.

       --pp _s_t_r_i_n_g, ----pprreepprroocceessssoorr==_s_t_r_i_n_g
              Specify the sequence of preprocessors to run before nnrrooffff or ttrrooffff/ggrrooffff.  Not all  installations  will
              have  a  full  set  of preprocessors.  Some of the preprocessors and the letters used to designate them
              are: eeqqnn (ee), ggrraapp (gg), ppiicc (pp), ttbbll (tt), vvggrriinndd (vv), rreeffeerr (rr).  This option overrides the $MMAANNRROOFFFFSSEEQQ
              environment variable.  zzssooeelliimm is always run as the very first preprocessor.

       --tt, ----ttrrooffff
              Use _g_r_o_f_f _-_m_a_n_d_o_c to format the manual page to stdout.  This option is not required in conjunction with
              --HH, --TT, or --ZZ.

       --TT[_d_e_v_i_c_e], ----ttrrooffff--ddeevviiccee[=_d_e_v_i_c_e]
              This option is used to change ggrrooffff (or possibly ttrrooffff''ss) output to be suitable for a device other than
              the  default.   It  implies --tt.  Examples (provided with Groff-1.17) include ddvvii, llaattiinn11, ppss, uuttff88, XX7755
              and XX110000.

       --HH[_b_r_o_w_s_e_r], ----hhttmmll[=_b_r_o_w_s_e_r]
              This option will cause ggrrooffff to produce HTML output, and will display that output  in  a  web  browser.
              The  choice  of  browser  is  determined  by  the  optional _b_r_o_w_s_e_r argument if one is provided, by the
              $BBRROOWWSSEERR environment variable, or by a compile-time default if that is unset (usually llyynnxx).  This  op‐
              tion implies --tt, and will only work with GGNNUU ttrrooffff.

       --XX[_d_p_i], ----ggxxddiittvviieeww[=_d_p_i]
              This  option  displays  the output of ggrrooffff in a graphical window using the ggxxddiittvviieeww program.  The _d_p_i
              (dots per inch) may be 75, 75-12, 100, or 100-12, defaulting to 75; the -12  variants  use  a  12-point
              base font.  This option implies --TT with the X75, X75-12, X100, or X100-12 device respectively.

       --ZZ, ----ddiittrrooffff
              ggrrooffff will run ttrrooffff and then use an appropriate post-processor to produce output suitable for the cho‐
              sen device.  If _g_r_o_f_f _-_m_a_n_d_o_c is ggrrooffff, this option is passed to ggrrooffff and will suppress the use  of  a
              post-processor.  It implies --tt.

   GGeettttiinngg hheellpp
       --??, ----hheellpp
              Print a help message and exit.

       ----uussaaggee
              Print a short usage message and exit.

       --VV, ----vveerrssiioonn
              Display version information.

EEXXIITT SSTTAATTUUSS
       00      Successful program execution.

       11      Usage, syntax or configuration file error.

       22      Operational error.

       33      A child process returned a non-zero exit status.

       1166     At least one of the pages/files/keywords didn't exist or wasn't matched.

EENNVVIIRROONNMMEENNTT
       MMAANNPPAATTHH
              If $MMAANNPPAATTHH is set, its value is used as the path to search for manual pages.

       MMAANNRROOFFFFOOPPTT
              Every  time  mmaann invokes the formatter (nnrrooffff, ttrrooffff, or ggrrooffff), it adds the contents of $MMAANNRROOFFFFOOPPTT to
              the formatter's command line.

       MMAANNRROOFFFFSSEEQQ
              If $MMAANNRROOFFFFSSEEQQ is set, its value is used to determine the set of preprocessors to pass each manual page
              through.  The default preprocessor list is system dependent.

       MMAANNSSEECCTT
              If  $MMAANNSSEECCTT  is set, its value is a colon-delimited list of sections and it is used to determine which
              manual sections to search and in what order.  The default is "1 n l 8 3 2 3posix 3pm 3perl 3am 5 4 9  6
              7", unless overridden by the SSEECCTTIIOONN directive in _/_e_t_c_/_m_a_n_p_a_t_h_._c_o_n_f_i_g.

       MMAANNPPAAGGEERR, PPAAGGEERR
              If  $MMAANNPPAAGGEERR  or $PPAAGGEERR is set ($MMAANNPPAAGGEERR is used in preference), its value is used as the name of the
              program used to display the manual page.  By default, ppaaggeerr is used, falling back to ccaatt  if  ppaaggeerr  is
              not found or is not executable.

              The  value  may  be a simple command name or a command with arguments, and may use shell quoting (back‐
              slashes, single quotes, or double quotes).  It may not use pipes to connect multiple commands;  if  you
              need  that,  use a wrapper script, which may take the file to display either as an argument or on stan‐
              dard input.

       MMAANNLLEESSSS
              If $MMAANNLLEESSSS is set, its value will be used as the default prompt string for the lleessss pager,  as  if  it
              had  been  passed  using  the --rr option (so any occurrences of the text $$MMAANN__PPNN will be expanded in the
              same way).  For example, if you want to set the prompt string unconditionally to  “my  prompt  string”,
              set $MMAANNLLEESSSS to ‘--PPssmmyy pprroommpptt ssttrriinngg’.  Using the --rr option overrides this environment variable.

       BBRROOWWSSEERR
              If  $BBRROOWWSSEERR  is set, its value is a colon-delimited list of commands, each of which in turn is used to
              try to start a web browser for mmaann ----hhttmmll.  In each command, _%_s is replaced by  a  filename  containing
              the  HTML output from ggrrooffff, _%_% is replaced by a single percent sign (%), and _%_c is replaced by a colon
              (:).

       SSYYSSTTEEMM If $SSYYSSTTEEMM is set, it will have the same effect as if it had been specified as the argument to  the  --mm
              option.

       MMAANNOOPPTT If  $MMAANNOOPPTT  is  set,  it will be parsed prior to mmaann''ss command line and is expected to be in a similar
              format.  As all of the other mmaann specific environment variables can be expressed as  command  line  op‐
              tions, and are thus candidates for being included in $MMAANNOOPPTT it is expected that they will become obso‐
              lete.  N.B.  All spaces that should be interpreted as part of an option's argument must be escaped.

       MMAANNWWIIDDTTHH
              If $MMAANNWWIIDDTTHH is set, its value is used as the line length for which manual pages should  be  formatted.
              If it is not set, manual pages will be formatted with a line length appropriate to the current terminal
              (using the value of $CCOOLLUUMMNNSS, and iiooccttll(2) if available, or falling back to 80 characters if neither is
              available).   Cat  pages  will  only be saved when the default formatting can be used, that is when the
              terminal line length is between 66 and 80 characters.

       MMAANN__KKEEEEPP__FFOORRMMAATTTTIINNGG
              Normally, when output is not being directed to a terminal (such as to a file  or  a  pipe),  formatting
              characters  are  discarded  to  make  it  easier to read the result without special tools.  However, if
              $MMAANN__KKEEEEPP__FFOORRMMAATTTTIINNGG is set to any non-empty value, these formatting characters are retained.  This may
              be useful for wrappers around mmaann that can interpret formatting characters.

       MMAANN__KKEEEEPP__SSTTDDEERRRR
              Normally,  when  output is being directed to a terminal (usually to a pager), any error output from the
              command used to produce formatted versions of manual pages is discarded to avoid interfering  with  the
              pager's display.  Programs such as ggrrooffff often produce relatively minor error messages about typograph‐
              ical problems such as poor alignment, which are unsightly and generally confusing when displayed  along
              with  the  manual page.  However, some users want to see them anyway, so, if $MMAANN__KKEEEEPP__SSTTDDEERRRR is set to
              any non-empty value, error output will be displayed as usual.

       LLAANNGG, LLCC__MMEESSSSAAGGEESS
              Depending on system and implementation, either or both of $LLAANNGG and $LLCC__MMEESSSSAAGGEESS will  be  interrogated
              for the current message locale.  mmaann will display its messages in that locale (if available).  See sseett‐‐
              llooccaallee(3) for precise details.

FFIILLEESS
       _/_e_t_c_/_m_a_n_p_a_t_h_._c_o_n_f_i_g
              man-db configuration file.

       _/_u_s_r_/_s_h_a_r_e_/_m_a_n
              A global manual page hierarchy.

SSEEEE AALLSSOO
       aapprrooppooss(1), ggrrooffff(1), lleessss(1), mmaannppaatthh(1), nnrrooffff(1), ttrrooffff(1), wwhhaattiiss(1), zzssooeelliimm(1), mmaannppaatthh(5), mmaann(7), ccaatt‐‐
       mmaann(8), mmaannddbb(8)

       Documentation for some packages may be available in other formats, such as iinnffoo(1) or HTML.

HHIISSTTOORRYY
       1990, 1991 – Originally written by John W. Eaton (jwe@che.utexas.edu).

       Dec   23   1992:   Rik   Faith   (faith@cs.unc.edu)   applied   bug   fixes   supplied   by   Willem   Kasdorp
       (wkasdo@nikhefk.nikef.nl).

       30th April 1994 – 23rd February 2000: Wilf. (G.Wilford@ee.surrey.ac.uk) has been  developing  and  maintaining
       this package with the help of a few dedicated people.

       30th October 1996 – 30th March 2001: Fabrizio Polacco <fpolacco@debian.org> maintained and enhanced this pack‐
       age for the Debian project, with the help of all the community.

       31st March 2001 – present day: Colin Watson <cjwatson@debian.org> is now developing and maintaining man-db.

2.9.1                                                 2020-02-25                                               MAN(1)
