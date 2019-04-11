let s:language_opt = {
      \ 'ant'        : ['ant'        , 'pt']            ,
      \ 'asm'        : ['asm'        , 'dlmt']          ,
      \ 'aspperl'    : ['asp'        , 'fsv']           ,
      \ 'aspvbs'     : ['asp'        , 'fsv']           ,
      \ 'awk'        : ['awk'        , 'f']             ,
      \ 'beta'       : ['beta'       , 'fsv']           ,
      \ 'c'          : ['c'          , 'dgsutvf']       ,
      \ 'cpp'        : ['c++'        , 'nvdtcgsuf']     ,
      \ 'cs'         : ['c#'         , 'dtncEgsipm']    ,
      \ 'cobol'      : ['cobol'      , 'dfgpPs']        ,
      \ 'delphi'     : ['pascal'     , 'fp']            ,
      \ 'dosbatch'   : ['dosbatch'   , 'lv']            ,
      \ 'eiffel'     : ['eiffel'     , 'cf']            ,
      \ 'erlang'     : ['erlang'     , 'drmf']          ,
      \ 'expect'     : ['tcl'        , 'cfp']           ,
      \ 'fortran'    : ['fortran'    , 'pbceiklmntvfs'] ,
      \ 'go'         : ['go'         , 'fctv']          ,
      \ 'html'       : ['html'       , 'af']            ,
      \ 'java'       : ['java'       , 'pcifm']         ,
      \ 'javascript' : ['javascript' , 'f']             ,
      \ 'lisp'       : ['lisp'       , 'f']             ,
      \ 'lua'        : ['lua'        , 'f']             ,
      \ 'make'       : ['make'       , 'm']             ,
      \ 'matlab'     : ['matlab'     , 'f']             ,
      \ 'ocaml'      : ['ocaml'      , 'cmMvtfCre']     ,
      \ 'pascal'     : ['pascal'     , 'fp']            ,
      \ 'perl'       : ['perl'       , 'clps']          ,
      \ 'php'        : ['php'        , 'cdvf']          ,
      \ 'python'     : ['python'     , 'cmf']           ,
      \ 'rexx'       : ['rexx'       , 's']             ,
      \ 'ruby'       : ['ruby'       , 'cfFm']          ,
      \ 'rust'       : ['rust'       , 'fgsmcti']     ,
      \ 'scheme'     : ['scheme'     , 'sf']            ,
      \ 'sh'         : ['sh'         , 'f']             ,
      \ 'csh'        : ['sh'         , 'f']             ,
      \ 'zsh'        : ['sh'         , 'f']             ,
      \ 'scala'      : ['scala'      , 'ctTmlp']        ,
      \ 'slang'      : ['slang'      , 'nf']            ,
      \ 'sml'        : ['sml'        , 'ecsrtvf']       ,
      \ 'sql'        : ['sql'        , 'cFPrstTvfp']    ,
      \ 'tex'        : ['tex'        , 'ipcsubPGl']     ,
      \ 'tcl'        : ['tcl'        , 'cfmp']          ,
      \ 'vera'       : ['vera'       , 'cdefgmpPtTvx']  ,
      \ 'verilog'    : ['verilog'    , 'mcPertwpvf']    ,
      \ 'vhdl'       : ['vhdl'       , 'PctTrefp']      ,
      \ 'vim'        : ['vim'        , 'avf']           ,
      \ 'yacc'       : ['yacc'       , 'l']             ,
      \ }

let s:language_opt = map(s:language_opt,
      \ 'printf(''--language-force=%s --%s-types=%s'', v:val[0], v:val[0], v:val[1])')

function! vista#types#uctags#KindsFor(filetype) abort
  return get(s:language_opt, a:filetype, '')
endfunction