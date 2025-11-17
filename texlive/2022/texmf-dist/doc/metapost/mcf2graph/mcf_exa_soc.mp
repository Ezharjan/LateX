%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Molecular Coding Format                      by Akira Yamaji  2022.08.22
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
input mcf2graph;   %%% it must be version 4.87
message "* mcf_exa_soc 2022.08.22";
message "";
%------------------------------------------------------------------------------
%%%%sw_frame:=Outside;
%%%%sw_numbering:=Bond;
%%%%sw_numbering:=Atom;
%%%%sw_frame:=Atom;
%%%%sw_expand:=1;
tag1:="J"; tag2:="C"; tag3:="fm"; tag4:="mw"; tag5:="EN"; tag6:="MW";
%------------------------------------------------------------------------------
%% outputformat:="png"; hppp:=vppp:=0.1; outputtemplate:="p%3c-%{EN_}.png";
%% outputformat:="svg"; outputtemplate:="s%3c-%{EN_}.svg";
%------------------------------------------------------------------------------
%ext(defaultfont:=mpfont; defaultscale:=.3; label.rt(inf_EN,(0,0));)
%------------------------------------------------------------------------------
%sw_output:=Fig+Info;
%ext(defaultfont:=mpfont; defaultscale:=.3;
%label.rt(inf_EN&" / "&cal_MW&" / "&decimal(num_MW-scantokens(inf_MW)),(0,0));)
%------------------------------------------------------------------------------
%%%%mc_query("Cat=biological","MW<200","s:MW");
%%%%mc_query("Cat=biological","MW<110.0","s:EN");
%%%%mc_query("Cat=biological","MW>=150","MW<=200","a:EN");
%%%%mc_query("Cat=biological","MW>=100","MW<=250","a:MW");
%******************************************************************************
fsize:=(35mm,24mm);
max_blength:=4mm;
mc_length:=20;
%------------------------------------------------------------------------------
%%%%  beginfigm("t:EN","v:Caffeine")          % select EN=Caffeine
forever:
%%%%  beginfigm("f:mcf_library","v+:*")       % 'mcf_library.mcf'(default)
%%%%  beginfigm("f:temp","v+:*")              % use query output 'temp.mcf'
%%%%  beginfigm("v+:*")                       % select all
  beginfigm("t:EXA","v+:1")                   % 'v+:1': select EXA=1
    if f_EOF=0: if mc_check(mc)=0: MC(scantokens(mc)) fi fi
  endfigm
  exitif f_EOF=1;                             % exit if file end
endfor
%******************************************************************************
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bye
