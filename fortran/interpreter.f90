! expr_module_test.f
!!
program expr_module_test
  use expr_module
  implicit none
  integer,target :: one_i, two_i
  real*8,target  :: one_r, two_r
  type(expr_type), pointer :: f, t, a, b, p
  
  f => nil;  call show(f)        !=> ()
  t => true; call show(t)        !=> T
  call show(logical_not(f))      !=> T
  call show(logical_not(t))      !=> ()
  
  write(6,'(a)') '-----------------------------------------'
  one_i = 1
  a => new_atom(TYPE_INTEGER, c_loc(one_i))
  call show(a)        !=> 1
  two_i = 2
  b => new_atom(TYPE_INTEGER, c_loc(two_i))
  call show(b)        !=> 2
  
  write(6,'(a)') '-----------------------------------------'
  p => new_pair(a, b)
  call show(car(p))   !=> 1
  call show(cdr(p))   !=> 2
  call show(p)        !=> <unknown>, but it should be pretty print.
  a => cdr(a)         ! ERROR
  
  write(6,'(a)') '-----------------------------------------'
  one_r = 1.0d0
  a => new_atom(TYPE_FLOAT, c_loc(one_r))
  call show(a)        !=> 1.0d0
  two_r = 2.0d0
  b => new_atom(TYPE_FLOAT, c_loc(two_r))
  call show(b)        !=> 2.0d0
end program expr_module_test
