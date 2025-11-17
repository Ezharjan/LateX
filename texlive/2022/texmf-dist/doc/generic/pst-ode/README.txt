===================================
 pst-ode PSTricks package

 https://gitlab.com/agrahn/pst-ode
===================================

Alexander Grahn, (c) 2012--today

`pst-ode' defines \pstODEsolve for solving initial value problems for sets of
Ordinary Differential Equations (ODE) using the Runge-Kutta-Fehlberg (RKF45)
method with automatic step size adjustment.

\pstODEsolve[<options>]{<result>}{<output format>}{t_0}{t_e}{N}{x⃗_0}{f⃗(t,x⃗)}

The state vectors x⃗ found at N equally spaced output points between t_0 and
t_e are stored in the PostScript object <result>, formatted according to the
second argument <output format>, as a long list of values. <output format>
lists the quantities to be stored in <result>. The user can select from the
elements of x⃗ and the integration parameter t.

The initial condition vector x⃗_0 and the right-hand side f⃗(t,x⃗) of
the ODE system can be input in algebraic notation, if desired. RPN (Postfix)
notation of PostScript can as well be used.

<result> can be directly used as the <data> argument of \listplot{<data>}
(package `pst-plot') or \listplotThreeD{<data>} (package `pst-3dplot').

This material is subject to the LaTeX Project Public License. See
  http://www.latex-project.org/lppl.txt
for the details of that license.
