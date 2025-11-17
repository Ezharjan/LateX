%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MCF file for mcf_manual.tex  by Akira.Yamaji               2022.08.22
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
input mcf2graph;   %% it must be version 4.87
% ** use library file 'mcf_library.mcf'
message "mcf_man_soc 2022.08.22"; message "";
%------------------------------------------------------------------------
sw_mframe:=0;
sw_expand:=0;
%%ext(defaultscale:=.5; label.bot(decimal(char_num)&":"&inf_EN,(.5w,0));)
%***********************************************************************
fsize:=(40mm,25mm);
blength:=6mm;
%***********************************************************************
beginfigm("EN:Glycine",":<30,NH2,!2,COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Alanine",":<30,NH2,!~wb,/_,!,COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Valine",":<30,NH2,!~wb,/?!,!,COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Leucine",":<30,NH2,!~wb,/'(!,?!),!,COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Isoleucine",":<30,NH2,!~wb,/'(/*_,!2),!,COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Serine",":<30,NH2,!~wb,/!OH,!,COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Threonine",":<30,NH2,!~wb,/'(/_,!~wf,OH),!,COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Cysteine",":<30,NH2,!~wb,/!SH,!,COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Methionine",":<30,NH2,!~wb,/'(!2,S,!),!,COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Phenylalanine",":<30,NH2,!~wb,/!Ph,!,COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Tyrosine",":<30,NH2,!~wb,/'(!Ph,-3:/OH),!,COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Triptophan",
  ":<30,NH2,!~wb,!,COOH,@2,\,!,<24,|,?5,-4=Ph,2=dr,5=dl,4:NH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Prorine",":<18,?5,3:NH,4:*/COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Glutamine",
  ":<30,NH2,!~wb,!,COOH,@2,\`1,!`1,!,//O,!,NH2")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Asparagine",":<30,NH2,!~wb,/'(!,//O,!,NH2),!,COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Aspartic acid",":<30,NH2,!~wb,/!COOH,!,COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Glutamic acid",":<30,NH2,!~wb,/'(!2,COOH),!,COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Lysine",":<30,NH2,!~wb,/'(!4,NH2),!,COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Arginine",
  ":<30,NH2,!~wb,!,COOH,@2,\`1,!`1,!2,NH,!,//NH,!,NH2")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Hystidine",
  ":<30,NH2,!~wb,!,COOH,@2,\,!,|,?5,{1,3}=dl,3:N,5:NH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-DOPA",":<30,NH2,!~wb,!,COOH,@2,\,!,Ph,{-3,-4}:/OH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:Ornithine",":<30,NH2,!~wb,/'(!3,NH2),!,COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:Citrulline",":<30,NH2,!~wb,/'(!3,NH,!,//O,!,NH2),!,COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:GABA",":<30,NH2,!4,COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:amino Levulinic acid",":<30,NH2,!2,//O,!3,COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:4-amino benzoic acid",":<30,Ph,1:/NH2,4:/COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Carboxyl glutamic acid",
  ":<30,NH2,!~wb,/'(!,/COOH,!,COOH),!,COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:L-Hydroxy Prorine",":<18,?5,1:/OH,3:NH,4:*/COOH")
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fsize:=(60mm,35mm);
blength:=0mm;
max_blength:=10mm;
ratio_thickness_bond:=0.015;
ratio_atom_bond:=0.36;
sw_frame:=Outside;
fmargin:=(2mm,1mm);
%***********************************************************************
beginfigm("EN:Chain 1")
  fsize:=(60mm,17mm);
  sw_numbering:=Bond;
  numbering_end:=6;
  ratio_chain_ring:=1;
%----------------------------------------------------------------------
  MC(<15,-30,45,-45,60,$300,$0,
       {1^$15,2^$345,3^$30,4^$345}:/_~dt,{5,6}=vf,
     )
  add(
    defaultscale:=0.5;
    labeloffset:=2bp;
    drawarrow B7/*.7{B7right}..{B1right}B1/*.7;   label.ulft("-30",B7/*.7);
    drawarrow B8/*.7{B8left}..{B2left}B2/*.7;     label.llft("45",B8/*.7);
    drawarrow B9/*.7{B9right}..{B3right}B3/*.7;   label.ulft("-45",B9/*.7);
    drawarrow B10/*.7{B10left}..{B4left}B4/*.7;   label.llft("60",B10/*.7);
  )
endfigm
%***********************************************************************
beginfigm("EN:Chain 2")
  fsize:=(60mm,17mm);
  sw_numbering:=Bond;
  numbering_end:=6;
  ratio_chain_ring:=1;
%----------------------------------------------------------------------
  MC(<-30,!6,
       {1^-120,2^60,3^-60,4^60,5^-60,6^60}:/_~dt
     )
  add(
    defaultscale:=0.5;
    labeloffset:=2bp;
    drawarrow B7/*.7{B7right}..{B1right}B1/*.7;   label.ulft("-60",B7/*.7);
    drawarrow B8/*.7{B8left}..{B2left}B2/*.7;     label.llft("60",B8/*.7);
    drawarrow B9/*.7{B7right}..{B3right}B3/*.7;   label.ulft("-60",B9/*.7);
    drawarrow B10/*.7{B10left}..{B4left}B4/*.7;   label.llft("60",B10/*.7);
    drawarrow B11/*.7{B11right}..{B5right}B5/*.7; label.ulft("-60",B11/*.7);
    drawarrow B12/*.7{B12left}..{B6left}B6/*.7;   label.llft("60",B12/*.7);
  )
endfigm
%***********************************************************************
beginfigm("EN:Jump and Branch")
  fsize:=(60mm,16mm);
  fmargin:=(2mm,2mm);
  sw_trimming:=1;
  sw_numbering:=Atom;
  ratio_chain_ring:=1;
%----------------------------------------------------------------------
  MC(<-30,!6,@3,0,!,@5,-30)
endfigm
%***********************************************************************
beginfigm("EN:Jump and Branch")
  fsize:=(60mm,16mm);
  fmargin:=(2mm,2mm);
  sw_numbering:=Atom;
  sw_trimming:=1;
  ratio_chain_ring:=1;
%----------------------------------------------------------------------
  MC(<-30,!6,@3,\,!)
endfigm
%***********************************************************************
beginfigm("EN:branch1")
  fsize:=(60mm,16mm);
  fmargin:=(2mm,2mm);
  sw_numbering:=Atom;
  sw_trimming:=1;
  numbering_end:=10;
  ratio_chain_ring:=1;
%----------------------------------------------------------------------
  MC(<30,!10,@2,\,!,@4,*\,!,@6,\*,!,@8,\\,!,@10,*\*,!)
endfigm
%***********************************************************************
beginfigm("EN:branch2")
  fsize:=(60mm,20mm);
  fmargin:=(2mm,2mm);
  sw_trimming:=1;
  sw_numbering:=Atom;
  numbering_end:=7;
  ratio_chain_ring:=1;
%----------------------------------------------------------------------
  MC(<30,!6,@2,\~dr,!,@4,\`1.5,-90,@6,15,-60)
endfigm
%***********************************************************************
beginfigm("EN:Connect atom")
  fsize:=(60mm,20mm);
  fmargin:=(2mm,2mm);
  sw_trimming:=1;
  sw_numbering:=Atom;
  ratio_chain_ring:=1;
%----------------------------------------------------------------------
  MC(<-30,!6,@3,\,!3,&6~bd,@9,&4~bz)
endfigm
%***********************************************************************
beginfigm("EN:ring")
  fsize:=(60mm,20mm);
  sw_trimming:=1;
  fmargin:=(2mm,3mm);
  sw_numbering:=Bond;
%----------------------------------------------------------------------
  MC(?6)
endfigm
%***********************************************************************
beginfigm("EN:rotate 1")
  fsize:=(60mm,20mm);
  fmargin:=(2mm,3mm);
  sw_trimming:=1;
  sw_numbering:=Bond;
  ratio_chain_ring:=1;
  numbering_end:=7;
    defaultscale:=0.5;
    labeloffset:=2bp;
  MC(#1,0,0,<90,0,<-90,0,<$315,0,<$90,0,<$0,0,{1:7}=vf,
      {3,4^180}:/_~dt)
  add(
    drawarrow B8/*.7{B8left}..{B3left}B3/*.7;   label.urt("90",B8/*.7);
    drawarrow B9/*.7{B9right}..{B4right}B4/*.7; label.urt("-90",B9/*.7);
  )
endfigm
%***********************************************************************
beginfigm("EN:change bond 1")
  fsize:=(70mm,10mm);
  fmargin:=(2mm,2mm);
  sw_trimming:=0;
  ratio_chain_ring:=1;
  MC(<-30,!~dm,!,!~dl,!,!~dr,!~db,!~db,!,!~tm)
  add(defaultscale:=0.6; labeloffset:=0;
      label.rt("(dm)",A1+(0,-0.7l));
      label.rt("(dl)",A3+(0,-0.7l));
      label.rt("(dr)",A5+(0,-0.7l));
      label.rt("(db)",A6+(0,-0.2l));
      label.rt("(db)",A7+(0,-0.7l));
      label.rt("(tm)",A9+(0,-0.7l));
  )
endfigm
%***********************************************************************
beginfigm("EN:change bond 2")
  fsize:=(70mm,10mm);
  fmargin:=(2mm,2mm);
  sw_trimming:=0;
  ratio_chain_ring:=1;
  MC(<-30,!~wf,!,!~wb,!,!~zf,!,!~zb,!,!~vf,!,!~vb)
  add(defaultscale:=0.6; labeloffset:=0;
      label.rt("(wf)",A1+(0,-0.7l));
      label.rt("(wb)",A3+(0,-0.7l));
      label.rt("(zf)",A5+(0,-0.7l));
      label.rt("(zb)",A7+(0,-0.7l));
      label.rt("(vf)",A9+(0,-0.7l));
      label.rt("(vb)",A11+(0,-0.7l));
  )
endfigm
%***********************************************************************
beginfigm("EN:change bond 3")
  fsize:=(70mm,10mm);
  fmargin:=(2mm,2mm);
  blength:=9mm;
  sw_trimming:=1;
  ratio_chain_ring:=1;
  MC(<-30,!7,1=dt,3=wv,5=bd,7=bz)
  add(defaultscale:=0.6; labeloffset:=0;
      label.rt("(dt)",A1+(0,-0.6l));
      label.rt("(wv)",A3+(0,-0.6l));
      label.rt("(bd)",A5+(0,-0.6l));
      label.rt("(bz)",A7+(0,-0.6l));
  )
endfigm
%***********************************************************************
beginfigm("EN:over line")
  sw_trimming:=1;
  fsize:=(75mm,20mm);
  ratio_chain_ring:=1;
  MC(<30,!18,$90`1.5,90`15.5,
     {2~si_,4~wf_,6~wb_,8~zf_,10~zb_,
      12~bd_,14~dl_,16~dr_,18~dm_}:/_`2)
endfigm
%***********************************************************************
beginfigm("EN:Steric ring")
  fsize:=(75mm,16mm);
  MCat(0.05,0.5)(#1.25,-30~wf_r,30~bd_r`1,30~wb_r,120,O,30,&1,##,
     #.5,{1^$-90,2^$90,3^$-90,4^$90}:/OH,6^$90:/!OH)
  defaultscale:=0.6;
  MCat(0.5,0.7)(0~wf_r)  add(label.lft("wf_r:",A1);)
  MCat(0.5,0.2)(0~wf)    add(label.lft("wf:",A1);)
  MCat(0.75,0.7)(0~bd_r) add(label.lft("bd_r:",A1);)
  MCat(0.75,0.2)(0~bd)   add(label.lft("bd:",A1);)
  MCat(1,0.7)(0~wb_r)    add(label.lft("wb_r:",A1);)
  MCat(1,0.2)(0~wb)      add(label.lft("wb:",A1);)
endfigm
%***********************************************************************
beginfigm("EN:change multi bond")
  fsize:=(60mm,8mm);
  fmargin:=(2mm,3mm);
  ratio_chain_ring:=1;
  MC(<30,!9,{2,4,6,8'}=dl)
endfigm
%***********************************************************************
beginfigm("EN:change bond length1")
  fsize:=(55mm,8mm);
  sw_numbering:=Bond;
  MC(<-30,!2,!4`1.2,!2)
endfigm
%***********************************************************************
beginfigm("EN:change bond length2")
  fsize:=(55mm,8mm);
  sw_numbering:=Bond;
  MC(<-30,!2,#1.2,!4,##,!2)
endfigm
%***********************************************************************
beginfigm("EN:change ring length")
  fsize:=(60mm,16mm);
  fmargin:=(2mm,2mm);
  sw_trimming:=1;
  sw_numbering:=Bond;
  MC(?6,@4,\,?6`1.2)
endfigm
%***********************************************************************
beginfigm("EN:Insert atom")
  sw_trimming:=1;
  fsize:=(50mm,7mm);
  MC(<-30,!2,O,!2,N,!2)
endfigm
%***********************************************************************
beginfigm("EN:change atom",":<30,!5,2:O,{3:5}:N")
  fsize:=(70mm,10mm);
  msize:=(0.48,1);
  MCat(0,0.5)(scantokens(mc))
  sw_numbering:=Atom;
  MCat(1,0.5)(scantokens(mc))
endfigm
%***********************************************************************
beginfigm("EN:change atom brock address 1",":?6,@4,\,|,?6,2:O")
  fsize:=(70mm,14mm);
  fmargin:=(3mm,1.5mm);
  MCat(0,.5)(scantokens(mc))
  sw_numbering:=Atom;
  msize:=(1,.88);
  MCat(1,.5)(scantokens(mc))
endfigm
%***********************************************************************
beginfigm("EN:change atom brock address 2",":?6,@4,\,|,?6,||,2:N")
  fsize:=(70mm,14mm);
  fmargin:=(3mm,1.5mm);
  MCat(0,.5)(scantokens(mc))
  sw_numbering:=Atom;
  msize:=(1,.88);
  MCat(1,.5)(scantokens(mc))
endfigm
%***********************************************************************
beginfigm("EN:change atom absolute address",":?6,@4,\,?6,$2:N")
  fsize:=(70mm,14mm);
  fmargin:=(3mm,1.5mm);
  MCat(0,.5)(scantokens(mc))
  sw_numbering:=Atom;
  msize:=(1,.88); 
  MCat(1,.5)(scantokens(mc))
endfigm
%***********************************************************************
beginfigm("EN:change atom relative adress",":?6,@4,\,?6,-2:N")
  fsize:=(70mm,14mm);
  fmargin:=(3mm,1.5mm);
  MCat(0,.5)(scantokens(mc))
  sw_numbering:=Atom;
  msize:=(1,.88);
  MCat(1,.5)(scantokens(mc))
endfigm
%***********************************************************************
beginfigm("EN:Charged atom")
  sw_trimming:=1;
  fsize:=(60mm,12mm);
  MC(<-30,!2,N,??,p_,!2,S,n_^180,!6,7:N,7:??,9:S,7:p_,9:n_^180)
endfigm
%***********************************************************************
beginfigm("EN:fused ring")
  fsize:=(60mm,18mm);
  fmargin:=(2mm,1.5mm);
  sw_trimming:=1;
  sw_numbering:=Bond;
  MC(<30,?6,3=?6,3=dt,{7:11}=bd_r)
endfigm
%-----------------------------------------------------------------------
beginfigm("EN:change ring length")
  fsize:=(60mm,25mm);
  fmargin:=(2mm,2mm);
  sw_trimming:=1;
  sw_numbering:=Bond;
  MC(?6,@4,\,?6`1.2,5=?6,11=?6,
      {14:23}=bd_r,{5,11}=dt)
endfigm
%-----------------------------------------------------------------------
beginfigm("EN:fused large 6 ring")
  fsize:=(60mm,18mm);
  fmargin:=(2mm,1.5mm);
  margin_top_bottom:=1.5mm;
  sw_numbering:=Bond;
  sw_trimming:=1;
  MC(<30,?6,3=?6[13],3=dt,{7:11}=bd_r)
endfigm
%-----------------------------------------------------------------------
beginfigm("EN:fuse multi ring")
  fsize:=(70mm,20mm);
  fmargin:=(2mm,2mm);
  sw_numbering:=Bond;
  sw_trimming:=1;
  MC(<30,?6,{-3,-4,-4,-2,-2,-4,-4}=?6,{4,8,13,20,25,28,33}=dt)
endfigm
%***********************************************************************
beginfigm("EN:fused ring 2")
  fsize:=(75mm,20mm);
  fmargin:=(2mm,2mm);
  sw_numbering:=Bond;
  msize:=(1,.9);
  MCat( 0,.5)(<30,?6,{3,(11,4)}=?6,{11,4}=dt,{12:15}=bd_r)
  add(defaultscale:=0.4; label("(1)",p0);)
  msize:=(1,.9);
  MCat(.5,.5)(<30,?6,3=?6,(11,4)=?5,{11,4}=dt,{12:14}=bd_r)
  add(defaultscale:=0.4; label("(2)",p0);)
  msize:=(1,.9);
  MCat( 1,.5)(<30,?6,3=?6,(11,4)=?4,{11,4}=dt,{12,13}=bd_r)
  add(defaultscale:=0.4; label("(3)",p0);)
endfigm
%***********************************************************************
beginfigm("EN:fused ring 3")
  fsize:=(60mm,20mm);
  fmargin:=(2mm,2mm);
  sw_numbering:=Bond;
  MCat(0,1)(?6,{3,10}=?6,(16,4)=?6[3],{16,4}=dt,{17:19}=bd_r)
  add(defaultscale:=0.4; label("(1)",p0);)
  MCat(1,0)(?6,{3,10}=?6,(16,4)=?5[2],{16,4}=dt,{17,18}=bd_r)
  add(defaultscale:=0.4; label("(2)",p0);)
endfigm
%***********************************************************************
beginfigm("EN:fused ring 4")
  fsize:=(60mm,20mm);
  fmargin:=(2mm,2mm);
  sw_numbering:=Bond;
  MC(<-30,?6,{3,10,15}=?6,(21,4)=?6[2],{21,4}=dt,{22,23}=bd_r)
endfigm
%***********************************************************************
beginfigm("EN:Spiro ring ")
  fsize:=(40mm,15mm);
  sw_numbering:=Atom;
  numbering_end:=7;
  ratio_chain_ring:=1;
  MC(<30,!6,@4,?5)
endfigm
%***********************************************************************
beginfigm("EN:group 1")
  fsize:=(75mm,18mm);
  MC(<30,!,/_,!2,/!,!2,/!,!4,/?!,!4,/??!,!2,/'(Ph`0.8)^-60,!)
endfigm
%***********************************************************************
beginfigm("EN:group 2")
  fsize:=(70mm,14mm);
  MC(<30,!`1,//O,!2`1,*/H,!2`1,/*H,!2`1,*/*H,!2`1,**?3,!`1)
  add(defaultscale:=0.75;
      label("//",A2-(0,0.45l));
      label("*/",A4-(0,0.45l));
      label("/*",A6-(0,0.45l));
      label("*/*",A8-(0,0.45l));
      label("**",A10-(0,0.45l));
     )
endfigm
%***********************************************************************
beginfigm("EN:group 3")
  fsize:=(60mm,16mm);
  sw_trimming:=1;
  MC(<-30,#1,!2,/_`2^30,!2,/!2>lr,!2,/!2>rl,!)
endfigm
%***********************************************************************
beginfigm("EN:group 3")
  fsize:=(75mm,25mm);
  fmargin:=(2mm,2mm);
  sw_numbering:=Atom;
  numbering_end:=17;
  MC(<30,!17,2:/_,3:/!,4:/!2,7:/iPr,8:/tBu,10:/'(Ph`0.6)^-15,
     {11,12,13'}:*/_,{15,16,17'}:/*_)
endfigm
%***********************************************************************
beginfigm("EN:group 4")
  fsize:=(60mm,18mm);
  sw_trimming:=1;
  fmargin:=(2mm,2mm);
  sw_numbering:=Atom; numbering_end:=9;
  MC(<30,!8`1,{2~wf,4~zf,6^-30,8^$120}:/_)
endfigm
%***********************************************************************
beginfigm("EN:group 5")
  fsize:=(60mm,16mm);
  sw_trimming:=1;
  sw_numbering:=Atom; numbering_end:=8;
  MC(<-30,!7`1,3:/_`2^30,5:/!2>lr,7:/!2>rl)
endfigm
%***********************************************************************
beginfigm("EN:chain strech direction mode 1")
  fsize:=(50mm,25mm);
  sw_trimming:=1;
  ratio_chain_ring:=1;
  MC(?4,{3^-90,3^-30,3^90}:/!3>hz,
        {1^-60,1,1^60}:/!3>vt
  )
  add(defaultscale:=0.5; labeloffset:=2bp;
      label.rt(">hz",A8);
      label.top(">hz",A12);
      label.top(">hz",A16);
      label.rt(">vt",A20);
      label.top(">vt",A24);
      label.rt(">vt",A28);
  )
endfigm
%***********************************************************************
beginfigm("EN:chain strech direction mode 2")
  fsize:=(60mm,20mm);
  sw_trimming:=1;
  ratio_chain_ring:=1;
  MC(<-30,!6,{3^-30,3,3^30}:/!3>lr,
             {5^-30,5,5^30}:/!3>rl
  )
  add(defaultscale:=0.6; labeloffset:=2bp;
      label.lft(">lr",A11);
      label.lft(">lr",A15);
      label.top(">lr",A19);
      label.top(">rl",A23);
      label.rt(">rl",A27);
      label.rt(">rl",A31);
  )
endfigm
%***********************************************************************
beginfigm("EN:chain strech direction mode 3")
  fsize:=(40mm,20mm);
  sw_trimming:=1;
  MC(<30,!4,2:/!6>30,4:/!4>-45)
endfigm
%***********************************************************************
beginfigm("EN:chain strech direction mode 4")
  fsize:=(60mm,20mm);
  sw_trimming:=1;
  MC(<30,!6,6>'(90,-90,90,-90,90):/!5)
endfigm
%***********************************************************************
beginfigm("EN:change atom and group")
  fsize:=(60mm,12mm);
  sw_trimming:=1;
  MC(<-30,!2,NH,!2,N!,!2,N!2,!2,SO,!2,SOO,!)
endfigm
%***********************************************************************
beginfigm("EN:methyl*2,isopropyl,tert-butyl")
  fsize:=(60mm,12mm);
  sw_trimming:=1;
  MC(<30,!9`1,?!,!,??,!,2:??,4:/?!,6:/??!,8:/N?!)
endfigm
%***********************************************************************
beginfigm("EN:User definition")
  fsize:=(60mm,13mm);
  sw_trimming:=1;
  iBuOH:='(!,/_,!,OH);
  MC(<30,?6,{4,6}:/iBuOH)
endfigm
%***********************************************************************
beginfigm("EN:Inline definition")
  fsize:=(60mm,13mm);
  fmargin:=(2mm,1mm);
  sw_trimming:=1;
  MC(<30,!8,{2,6}:/'(!,/_,!,OH))
endfigm
%***********************************************************************
beginfigm("EN:Move position")
  fsize:=(70mm,16mm);
  fmargin:=(2mm,1mm);
  sw_trimming:=1;
  MC(<30,?6,@3,\,!3,//O,!,O,n_^60,@$(6,1),H,p_^15)
  add(drawdot A1 withpen pencircle scaled 2bp;
      pickup pencircle scaled 0.1bp;
      for i=0 upto 6:
        draw (A1+(l*i,l-3bp))--(l*i,l+3bp);
      endfor
      draw A1--(A1+(0,1l))--A1+(6l,1l);
      draw (A1+(0,1l))--(A1+(-3bp,1l));
  )
endfigm
%***********************************************************************
beginfigm("EN:Serial number")
  fsize:=(75mm,14mm);
  max_blength:=8mm;
  sw_numbering:=Atom; numbering_end:=15;
  MC(<30,!14,{2,6:10,14}:/_~bd_r`0.5)
endfigm
%***********************************************************************
beginfigm("EN:Change color")
  fsize:=(50mm,20mm);
  max_blength:=8mm;
  MC(
    <30,Ph,{2,5}:N,3:/NH2,4:/COOH,
    2:red,5:blue,3=green
  )
endfigm
%***********************************************************************
beginfigm("EN:Change font")
  fsize:=(50mm,20mm);
  max_blength:=8mm;
  atomfont:="cmr8";
  MC(<30,Ph,{2,5}:N,3:/NH2,4:/COOH)
endfigm
%***********************************************************************
beginfigm("EN:mangle")
  fsize:=(50mm,15mm);
  blength:=6mm;
  mangle:=0;
  MCat(0.2,0.5)(Ph)
  add(drawarrow((A1 shifted (aw,0)) rotated A1ang..A1);)
  mangle:=30;
  MCat(0.8,0.5)(Ph)
  add(drawarrow((A1 shifted (aw,0)) rotated A1ang..A1);)
endfigm
%***********************************************************************
beginfigm("EN:blength=0")
  sw_frame:=Bothside;
  fsize:=(40mm,15mm);
  MC(<30,Ph)
  ext(pickup pencircle scaled 0.2pt; 
      for i=0 upto w/mm: draw (i*mm,0)--(i*mm,-.5mm); endfor
      for i=0 upto h/mm: draw (0,i*mm)--(-.5mm,i*mm); endfor
      for i=0 upto w/cm: draw (i*cm,0)--(i*cm,-.8mm); endfor
      for i=0 upto h/cm: draw (0,i*cm)--(-.8mm,i*cm); endfor
  )
endfigm
%-----------------------------------------------------------------------
beginfigm("EN:0<blength=<1")
  sw_frame:=Bothside;
  fsize:=(40mm,15mm);
  blength:=0.1;
  MC(<30,Ph)
  ext(pickup pencircle scaled 0.2pt; 
      for i=0 upto w/mm: draw (i*mm,0)--(i*mm,-.5mm); endfor
      for i=0 upto h/mm: draw (0,i*mm)--(-.5mm,i*mm); endfor
      for i=0 upto w/cm: draw (i*cm,0)--(i*cm,-.8mm); endfor
      for i=0 upto h/cm: draw (0,i*cm)--(-.8mm,i*cm); endfor
  )
endfigm
%-----------------------------------------------------------------------
beginfigm("EN:blength>1")
  sw_frame:=Bothside;
  fsize:=(40mm,15mm);
  blength:=8mm;
  MC(<30,Ph)
  ext(pickup pencircle scaled 0.2pt; 
      for i=0 upto w/mm: draw (i*mm,0)--(i*mm,-.5mm); endfor
      for i=0 upto h/mm: draw (0,i*mm)--(-.5mm,i*mm); endfor
      for i=0 upto w/cm: draw (i*cm,0)--(i*cm,-.8mm); endfor
      for i=0 upto h/cm: draw (0,i*cm)--(-.8mm,i*cm); endfor
  )
endfigm
%***********************************************************************
beginfigm("EN:msize=(1)")
  sw_frame:=Bothside+Mol;
  fsize:=(40mm,15mm);
  msize:=(1,1);
  MC(<30,Ph)
  ext(pickup pencircle scaled 0.2pt; 
      for i=0 upto w/mm: draw (i*mm,0)--(i*mm,-.5mm); endfor
      for i=0 upto h/mm: draw (0,i*mm)--(-.5mm,i*mm); endfor
      for i=0 upto w/cm: draw (i*cm,0)--(i*cm,-.8mm); endfor
      for i=0 upto h/cm: draw (0,i*cm)--(-.8mm,i*cm); endfor
  )
endfigm
%------------------------------------------------------
beginfigm("EN:msize=(0.25,1)")
  sw_frame:=Bothside+Mol;
  fsize:=(40mm,15mm);
  msize:=(0.25,1);
  MC(<30,Ph)
  ext(pickup pencircle scaled 0.2pt; 
      for i=0 upto w/mm: draw (i*mm,0)--(i*mm,-.5mm); endfor
      for i=0 upto h/mm: draw (0,i*mm)--(-.5mm,i*mm); endfor
      for i=0 upto w/cm: draw (i*cm,0)--(i*cm,-.8mm); endfor
      for i=0 upto h/cm: draw (0,i*cm)--(-.8mm,i*cm); endfor
  )
endfigm
%------------------------------------------------------
beginfigm("EN:msize=(11mm,11mm)")
  sw_frame:=Bothside+Mol;
  fsize:=(40mm,15mm);
  msize:=(11mm,11mm);
  MC(<30,Ph)
  ext(pickup pencircle scaled 0.2pt; 
      for i=0 upto w/mm: draw (i*mm,0)--(i*mm,-.5mm); endfor
      for i=0 upto h/mm: draw (0,i*mm)--(-.5mm,i*mm); endfor
      for i=0 upto w/cm: draw (i*cm,0)--(i*cm,-.8mm); endfor
      for i=0 upto h/cm: draw (0,i*cm)--(-.8mm,i*cm); endfor
  )
endfigm
%***********************************************************************
beginfigm("EN:mposition")
  sw_frame:=Bothside+Mol;
  fsize:=(40mm,15mm);
  msize:=(1,0.8);
  mposition:=(0.5,0.5);
  MC(<30,Ph)
endfigm
%-----------------------------------------------------
beginfigm("EN:mposition")
  sw_frame:=Bothside+Mol;
  fsize:=(40mm,15mm);
  msize:=(1,0.8);
  mposition:=(1,0);
  MC(<30,Ph)
endfigm
%-----------------------------------------------------
beginfigm("EN:mposition")
  sw_frame:=sw_frame+Mol;
  fsize:=(40mm,15mm);
  msize:=(1,0.8);
  mposition:=(10mm,4mm);
  MC(<30,Ph)
  ext(drawdot p1 withpen pencircle scaled 3pt;
      pickup pencircle scaled 0.2pt; 
      for i=0 upto w/mm: draw (i*mm,0)--(i*mm,-.5mm); endfor
      for i=0 upto h/mm: draw (0,i*mm)--(-.5mm,i*mm); endfor
      for i=0 upto w/cm: draw (i*cm,0)--(i*cm,-.8mm); endfor
      for i=0 upto h/cm: draw (0,i*cm)--(-.8mm,i*cm); endfor
  )
endfigm
%***********************************************************************
beginfigm("EN:Figure size")
  fsize:=(40mm,12mm);
  sw_frame:=Outside;
  MC(<30,Ph)
  ext(pickup pencircle scaled 0.2pt; 
      for i=0 upto w/mm: draw (i*mm,0)--(i*mm,-.5mm); endfor
      for i=0 upto h/mm: draw (0,i*mm)--(-.5mm,i*mm); endfor
      for i=0 upto w/cm: draw (i*cm,0)--(i*cm,-.8mm); endfor
      for i=0 upto h/cm: draw (0,i*cm)--(-.8mm,i*cm); endfor
  )
endfigm
%***********************************************************************
beginfigm("EN:fmargin")
  fsize:=(40mm,12mm);
  sw_frame:=Bothside+Mol;
  fmargin:=(10mm,1mm);
  MC(<30,Ph)
  ext(pickup pencircle scaled 0.2pt; 
      for i=0 upto w/mm: draw (i*mm,0)--(i*mm,-.5mm); endfor
      for i=0 upto h/mm: draw (0,i*mm)--(-.5mm,i*mm); endfor
      for i=0 upto w/cm: draw (i*cm,0)--(i*cm,-.8mm); endfor
      for i=0 upto h/cm: draw (0,i*cm)--(-.8mm,i*cm); endfor
      drawdot p0 withpen pencircle scaled 3pt;
  )
endfigm
%***********************************************************************
beginfigm("EN:offset_thickness",":<30,Ph") 
  fsize:=(60mm,12mm);
  offset_thickness:=0.0pt; MCat(0.1,0.5)(scantokens(mc))
  offset_thickness:=0.2pt; MCat(0.55,0.5)(scantokens(mc))
  offset_thickness:=0.5pt; MCat(1,0.5)(scantokens(mc))
  ext(defaultscale:=0.6; labeloffset:=1bp;
    label.urt("0.0pt",(0,1bp));
    label.urt("0.2pt",(0.36w,1bp));
    label.urt("0.5pt",(0.7w,1bp));
  )
endfigm
%***********************************************************************
beginfigm("EN:offset_bond_gap",":<30,Ph")
  fsize:=(60mm,12mm);
  offset_bond_gap:=0.0pt; MCat(0.1, 0.5)(scantokens(mc))
  offset_bond_gap:=0.3pt; MCat(0.55,0.5)(scantokens(mc))  %<<== default
  offset_bond_gap:=1.0pt; MCat(1,   0.5)(scantokens(mc))
  ext(defaultscale:=0.6; labeloffset:=1bp;
    label.urt("0.0pt",(0,1bp));
    label.urt("0.3pt",(0.36w,1bp));
    label.urt("1.0pt",(0.7w,1bp));
  )
endfigm
%***********************************************************************
beginfigm("EN:offset_atom")
  fsize:=(60mm,12mm);
  offset_atom:=0.0pt; MCat(0.1, .5)(<30,?6,3:O)
  offset_atom:=0.8pt; MCat(.55, .5)(<30,?6,3:O)   %<<== default
  offset_atom:=2.0pt; MCat(1,   .5)(<30,?6,3:O)
  ext(defaultscale:=0.6; labeloffset:=1bp;
    label.urt("0.0pt",(0,1bp));
    label.urt("0.8pt",(0.36w,1bp));
    label.urt("2.0pt",(0.7w,1bp));
  )
endfigm
%***********************************************************************
beginfigm("EN:offset_wedge") 
  fsize:=(60mm,12mm);
  offset_wedge:=0.0pt; MCat(0.1,0.5)(<30,?6,5:*/_)
  offset_wedge:=0.4pt; MCat(0.55,0.5)(<30,?6,5:*/_)  %<<== default
  offset_wedge:=1.0pt; MCat(1, 0.5)(<30,?6,5:*/_)
  ext(defaultscale:=0.6; labeloffset:=1bp;
    label.urt("0.0pt",(0,1bp));
    label.urt("0.4pt",(0.36w,1bp));
    label.urt("1.0pt",(0.7w,1bp));
  )
endfigm
%***********************************************************************
beginfigm("EN:max_blength")
  fsize:=(60mm,20mm);
  sw_frame:=sw_frame+Mol;
  max_blength:=5mm;  MCat(0, .5)(<30,Ph)
  max_blength:=8mm;  MCat(.4,.5)(<30,Ph)
  max_blength:=10mm; MCat(1, .5)(<30,Ph)   %<<== default
  ext(defaultscale:=0.6; labeloffset:=1bp;
    label("5mm", (0.1w,0.5h));
    label("8mm", (0.42w,0.5h));
    label("10mm",(0.82w,0.5h));
  )
endfigm
%***********************************************************************
beginfigm("EN:ratio_thickness_bond")
  fsize:=(60mm,12mm);
  ratio_thickness_bond:=0.005;  MCat(0.1,0.5)(<30,Ph)
  ratio_thickness_bond:=0.015;  MCat(.55,0.5)(<30,Ph)  %<<== default
  ratio_thickness_bond:=0.03;   MCat(1, 0.5)(<30,Ph)
  ext(defaultscale:=0.6; labeloffset:=1bp;
    label.urt("0.005",(0,1bp));
    label.urt("0.015",(0.36w,1bp));
    label.urt("0.030",(0.7w,1bp));
  )
endfigm
%***********************************************************************
beginfigm("EN:ratio_char_bond")
  fsize:=(60mm,12mm);
  ratio_char_bond:=1.0;  MCat(0, .5)(<30,?6,6:O,3:NH)
  ratio_char_bond:=1.5;  MCat(.5, .5)(<30,?6,6:O,3:NH)   %<<== default
  ratio_char_bond:=2.0;  MCat( 1, .5)(<30,?6,6:O,3:NH)
  ext(defaultscale:=0.6; labeloffset:=1bp;
    label.urt("1.0",(0,1bp));
    label.urt("1.5",(0.36w,1bp));
    label.urt("2.0",(0.7w,1bp));
  )
endfigm
%***********************************************************************
beginfigm("EN:ratio_bondgap_bond")
  fsize:=(60mm,12mm);
  ratio_bondgap_bond:=0.10; MCat(0.1, .5)(<30,Ph)
  ratio_bondgap_bond:=0.15; MCat(.55, .5)(<30,Ph)    %<<== default
  ratio_bondgap_bond:=0.20; MCat(1  , .5)(<30,Ph)
  ext(defaultscale:=0.6; labeloffset:=1bp;
    label.urt("0.10",(0,1bp));
    label.urt("0.15",(0.36w,1bp));
    label.urt("0.20",(0.7w,1bp));
  )
endfigm
%***********************************************************************
beginfigm("EN:ratio_atom_bond")
  fsize:=(60mm,12mm);
  ratio_atom_bond:=0.25;  MCat(0.1, .5)(<30,?6,3:O)
  ratio_atom_bond:=0.33;  MCat(.55, .5)(<30,?6,3:O)   %<<== default
  ratio_atom_bond:=0.45;  MCat(1, .5)(<30,?6,3:O)
  ext(defaultscale:=0.6; labeloffset:=1bp;
    label.urt("0.25",(0,1bp));
    label.urt("0.33",(0.36w,1bp));
    label.urt("0.45",(0.7w,1bp));
  )
endfigm
%***********************************************************************
beginfigm("EN:ratio_wedge_bond")
  fsize:=(70mm,12mm);
  ratio_wedge_bond:=0.1;  MCat(0.05,.5)(?6,4:*/_)
  ratio_wedge_bond:=0.12; MCat(.55, .5)(?6,4:*/_)   %<<== default
  ratio_wedge_bond:=0.2;  MCat(1  , .5)(?6,4:*/_)
  ext(defaultscale:=0.6; labeloffset:=1bp;
    label.urt("0.10",(0,1bp));
    label.urt("0.12",(0.36w,1bp));
    label.urt("0.20",(0.7w,1bp));
  )
endfigm
%***********************************************************************
beginfigm("EN:ratio_atomgap_atom",":<30,!2`0.5,2:O")
  fsize:=(70mm,12mm);
  sw_frame:=sw_frame+Atom;
  ratio_atomgap_atom:=0.00;  MCat(0, .5)(scantokens(mc))
  ratio_atomgap_atom:=0.050; MCat(.5,.5)(scantokens(mc))  %<<== default
  ratio_atomgap_atom:=0.12;  MCat(1, .5)(scantokens(mc))
  ext(defaultscale:=0.75; labeloffset:=1bp;
    label.urt("0.00",(0.05w,1bp));
    label.urt("0.05",(0.45w,1bp));
    label.urt("0.12",(0.85w,1bp));
  )
endfigm
%***********************************************************************
beginfigm("EN:ratio_chain_ring")
  fsize:=(70mm,12mm);
  ratio_chain_ring:= 0.4;  MCat(0.05,.5)(<30,?6,4:/!)
  ratio_chain_ring:= 0.66; MCat(.45, .5)(<30,?6,4:/!)   %<<== default
  ratio_chain_ring:= 1;    MCat(1,   .5)(<30,?6,4:/!)
  ext(defaultscale:=0.6; labeloffset:=1bp;
    label.urt("0.40",(0,1bp));
    label.urt("0.66",(0.3w,1bp));
    label.urt("1.0" ,(0.62w,1bp));
  )
endfigm
%***********************************************************************
beginfigm("EN:ratio_hashgap_bond",":<30,!2,2:/*_`1.5")
  fsize:=(70mm,15mm);
  ratio_hashgap_bond:=0.06; MCat(0.08,.5)(scantokens(mc))
  ratio_hashgap_bond:=0.12; MCat( .55,.5)(scantokens(mc)) %<<== default
  ratio_hashgap_bond:=0.20; MCat(1,   .5)(scantokens(mc))
  ext(defaultscale:=0.6; labeloffset:=1bp;
    label.urt("0.06",(0,1bp));
    label.urt("0.12",(0.4w,1bp));
    label.urt("0.20",(0.77w,1bp));
  )
endfigm
%***********************************************************************
beginfigm("EN:Switwch numbering atom")
  fsize:=(60mm,10mm);
  ratio_chain_ring:=1;
  numbering_start:=3; numbering_end:=8;
  sw_numbering:=Atom; MC(<-30,!9)
endfigm
%***********************************************************************
beginfigm("EN:Switwch numbering bond")
  fsize:=(60mm,10mm);
  ratio_chain_ring:=1;
  numbering_start:=3; numbering_end:=8;
  sw_numbering:=Bond; MC(<-30,!9)
endfigm
%***********************************************************************
beginfigm("EN:Switwch trimming")
  fsize:=(60mm,20mm);
  sw_frame:=Bothside+Mol;
  msize:=(1,.7); MCat(.2,.3)(Ph)
                 MCat(.8,.7)(Ph)
endfigm
%-----------------------------------------------------------------------
beginfigm("EN:Switwch trimming")
  fsize:=(60mm,20mm);
  sw_frame:=Bothside+Mol;
  sw_trimming:=1;
  msize:=(1,.7);
  MCat(.2,.3)(Ph)
  MCat(.8,.7)(Ph)
endfigm
%***********************************************************************
beginfigm("EN:Switwch Expand",":<30,Ph,4:/COOH,3:/NH2")
  fsize:=(60mm,20mm);
  MCat(0, .5)(scantokens(mc))
  sw_expand:=1;
  MCat(1, .5)(scantokens(mc))
endfigm
%***********************************************************************
beginfigm("EN:Switwch abbreviate group",":<30,Ph,4:/Cl,3:/F")
  fsize:=(60mm,12mm);
  MCat(.15, .5)(scantokens(mc))
  sw_abbreviate:=Group;
  MCat(.85, .5)(scantokens(mc))
endfigm
%***********************************************************************
beginfigm("EN:Switwch abbreviate bondtype",":<30,Ph,4:/Cl,3:/F")
  fsize:=(60mm,12mm);
  MCat(.15, .5)(scantokens(mc))
  sw_abbreviate:=Bond;
  MCat(.85, .5)(scantokens(mc))
endfigm
%***********************************************************************
beginfigm("EN:Switwch font frame 1")
  fsize:=(30mm,10mm);
  fmargin:=(5mm,1.5mm);
  sw_frame:=Outside;
  MC(<30,Ph)
endfigm
beginfigm("EN:Switwch font frame 2")
  fsize:=(30mm,10mm);
  fmargin:=(5mm,1.5mm);
  sw_frame:=Inside;
  MC(<30,Ph)
endfigm
beginfigm("EN:Switwch font frame 3")
  fsize:=(30mm,10mm);
  fmargin:=(5mm,1.5mm);
  sw_frame:=Bothside;
  MC(<30,Ph)
endfigm
%***********************************************************************
beginfigm("EN:Switwch molecular frame")
  sw_frame:=Outside;
  fsize:=(40mm,11mm);
  msize:=(1,1);
  sw_frame:=sw_frame+Mol;
  MC(<30,Ph)
endfigm
%***********************************************************************
beginfigm("EN:Switwch atom frame")
  fsize:=(60mm,10mm);
  sw_frame:=sw_frame+Atom;
  MC(<30,COOH,!,COOH)
endfigm
%***********************************************************************
beginfigm("EN:Local setting 1")
  fsize:=(15mm,12mm);
  MC(Ph)
endfigm
beginfigm("EN:Local setting 2")
  fsize:=(15mm,12mm);
  ratio_thickness_bond:=0.05;
  MC(Ph)
endfigm
beginfigm("EN:Local setting 3")
  fsize:=(15mm,12mm);
  MC(Ph)
endfigm
%***********************************************************************
save_ratio:=ratio_thickness_bond;
beginfigm("EN:Global setting 1")
  fsize:=(15mm,12mm);
  MC(Ph)
endfigm
ratio_thickness_bond:=0.05;
beginfigm("EN:Global setting 2")
  fsize:=(15mm,12mm);
  MC(Ph)
endfigm
beginfigm("EN:Global setting 3")
  fsize:=(15mm,12mm);
  MC(Ph)
endfigm
ratio_thickness_bond:=save_ratio;
%***********************************************************************
beginfigm("EN:MC() ")
  fmargin:=(0.5mm,0.5mm);
  fsize:=(40mm,15mm);
  sw_frame:=Outside+Mol;
  MC(<30,Ph,4:/Cl,3:/F)
endfigm
%-----------------------------------------------------------------------
beginfigm("EN:MCat()")
  defaultscale:=0.6;
  fsize:=(60mm,40mm);
  fmargin:=(3mm,3mm);
  blength:=0.07;
  sw_frame:=Outside;
  mangle:=0;
  for i=1 step -0.5 until 0:
    for j=0 step 0.33 until 1:
      MCat(j,i)(Ph,4:N)
      add(
        drawarrow((A1+A1up**aw)..A1);
        label(decimal(mangle),p0+(0.5w,0.5h));
      )
      mangle:=mangle+30;
    endfor
  endfor
endfigm
%***********************************************************************
beginfigm("EN:Pyridine",":<30,Ph,2:N")
  sw_trimming:=0;
  fsize:=(12mm,12mm);
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%-----------------------------------------------------------------------
beginfigm("EN:Pyridine",":<30,Ph,2):N")
  sw_trimming:=0;
  fsize:=(12mm,12mm);
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:add() 1")
 fsize:=(70mm,40mm);
 sw_frame:=sw_frame+Atom+Mol;
 max_blength:=10mm;
 msize:=(.91,.9);
 MCat(.5,.85)(<30,?6,{2,5}:O)
 add(
  defaultscale:=.8;
  labeloffset:=.3aw;
  dotlabel.lft("p0",p0);
  dotlabel.rt( "p0+(w,h)",p0+(w,h));
  dotlabel.ulft("A1",A1);
  drawarrow A1..A1+__*l<<A1ang;
  dotlabel.lrt( "B3s",B3s);
  dotlabel.rt("B3m",B3m);
  drawarrow B3m..B3m+__*l<<(B3ang+90);
  dotlabel.ulft("A6",A6);
  drawarrow A1{A1down}..A6;
  dotlabel.urt( "B3e",B3e);
  label.rt( "An="&decimal(An)&
           "  Bn="&decimal(Bn)&
           "  aw="&decimal(aw)&
           "  em="&decimal(em),
           p0+(-9em,-1.5em));
  label.rt( "w="&decimal(w)&
           "  h="&decimal(h)&
           "  l="&decimal(l),
           p0+(-9em,-3em));
 )
endfigm
%***********************************************************************
beginfigm("EN:add() 2")
  fsize:=(70mm,20mm);
  msize:=(1,0.85); MCat(0,0)(<30,Ph,3=dl,4:/NH2)
  add(labeloffset:=.7aw;
      label.top(lonepair 90,A7);
      drawarrow (A7+up**1.2aw){A7left}..{B7right}B7/*0.3;
      drawarrow B3m..A3+B2up**1.5aw..{A3down}A3;
  )
  MCat(1,0)(<30,?6,{1,5}=dl,4://NH2)
  add(labeloffset:=.7aw;
      label.top(plus,A7);
      label.urt(minus,A3);
      label(lonepair A3ang,A3+A3up**.7aw);
  )
  ext(drawdblarrow (0.4w,0.4h)..(0.55w,0.4h);)
endfigm
%***********************************************************************
beginfigm("EN:ext()")
  fsize:=(70mm,30mm);
  blength:=0.065;
  sw_label_emu:=1;
  %
  MCat(0.1,0.5)(<-210,60`1,60`1,60`1,{1,3}=dl,1:/R1,4:/R2^-60)
  add(
   defaultscale:=0.6;
   label.bot("Diene",p0+(0.5w,0));
  )
  MCat(0.4,0.5)(<-30,-60`1,1=dl,1:/R3,2:/R4^60)
  add(
   defaultscale:=0.6;
   label.bot("Dienophile",p0+(0.5w,0));
  )
  MCat(0.9,0.5)(<30,?6,6=dl,2:/R2,3:/R4,4:/R3,5:/R1)
  ext(
    drawarrow (0.52w,0.5h)..(0.6w,0.5h);
    defaultscale:=0.7;
    label("+",(0.25w,0.5h));
    ratio_thickness_char:=0.125;
    label.bot("Diels-Alder Reaction",(0.5w,h));
  )
endfigm
%***********************************************************************
% Global ext() setting 1
save_defaultsize:=defaultsize;
defaultsize:=5bp;
beginfigm("EN:?3")
  fsize:=(12mm,15mm);
  MCat(0.5,1)(<30,?3)
endfigm
beginfigm("EN:?4")
  fsize:=(12mm,15mm);
  MCat(0.5,1)(?4)
  %-------------------------------
  ext(label.top(inf_EN,(0.5w,0));)
  %-------------------------------
endfigm
beginfigm("EN:?5")
  fsize:=(12mm,15mm);
  MCat(0.5,1)(?5)
endfigm
beginfigm("EN:?5")
  fsize:=(12mm,15mm);
  MCat(0.5,1)(?6)
endfigm
%-----------------------------------------------------------------------
beginfigm("EN:?3")
  fsize:=(12mm,15mm);
  MCat(0.5,1)(<30,?3)
endfigm
%-------------------------------
ext(label.top(inf_EN,(0.5w,0));)
%-------------------------------
beginfigm("EN:?4")
  fsize:=(12mm,15mm);
  MCat(0.5,1)(?4)
endfigm
beginfigm("EN:?5")
  fsize:=(12mm,15mm);
  MCat(0.5,1)(?5)
endfigm
%---------
ext_clear;
%---------
beginfigm("EN:?6")
  fsize:=(12mm,15mm);
  MCat(0.5,1)(?6)
endfigm
defaultsize:=save_defaultsize;
%***************************************************************************
beginfigm("t:EN","v:Luciferin")
  fsize:=(50mm,15mm);
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***************************************************************************
beginfigm("EN:Colchicine","MW:385.41",
  %---------------------------------------
  ": <30,Ph,{1,2,6}:/O!,{-4,-5}=?7,   ",
  ": {-1,-4,-6}=dl,-2://O,-3:/O!,     ",
  ": @9,\,NH,!,//O,!                  ")
  %---------------------------------------
  fsize:=(50mm,20mm);
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***************************************************************************
beginfigm("EN:Paclitaxel","MW:853.91",
  %------------------------------------------------------
  ": ?6,5=dl,@3,#1,36,45,45,45,45,##,                   ",
  ": &($5),-4=?6,-4=?4,-1=wb,-3=wf,-1:O,||,             ",
  ": 4:??,6:/_,{3^-60,15}:*/OH,8:/*H^-60,               ",
  ": 9:*/_^60,10://O,                                   ",
  ": @1,\,O,!,//O,!,*/OH,!,/Ph,60~wf,NH,-60,//O,60,Ph,  ",
  ": @7,\*,O,-45,//O,60,Ph,@11,*\,O,-60,//O,60,         ",
  ": @12,\*^-15,O,60,//O,-60                            ")
  %------------------------------------------------------
  fsize:=(50mm,25mm);
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***************************************************************************
beginfigm("EN:Maltose","MW:342.3",
  %------------------------------------------------------
  ": #1.25,-30~wf_r,30~bd_r`1,30~wb_r,120,O,30,&1,##,  ",
  ": #.5,{1^$-90,2^$90,3^$-90}:/OH,6^$90:/!OH,##,      ",
  ": @4,$-50~arc_lb`1,O,$50~arc_br`1,<$0,              ",
  ": |,#1.25,-30~wf_r,30~bd_r`1,30~wb_r,120,O,30,&1,##,",
  ": #.5,{2^$90,3^$-90,4^$-90}:/OH,6^$90:/!OH          ")
  %------------------------------------------------------
  fsize:=(50mm,20mm);
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%***********************************************************************
beginfigm("EN:Cellobiose","MW:342.3",
  %------------------------------------------------------
  ": #1.25,-30~wf_r,30~bd_r`1,30~wb_r,120,O,30,&1,##,  ",
  ": #.5,{1^$-90,2^$90,3^$-90}:/OH,6^$90:/!OH,##,      ",
  ": @4,$0~arc_ltr,O,$0~arc_lbr,                       ",
  ": |,#1.25,-30~wf_r,30~bd_r`1,30~wb_r,120,O,30,&1,##,",
  ": #.5,{2^$90,3^$-90,4^$-90}:/OH,6^$90:/!OH          ")
  %------------------------------------------------------
  fsize:=(50mm,20mm);
  if mc_check(mc)=0: MC(scantokens(mc)) fi
endfigm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bye
